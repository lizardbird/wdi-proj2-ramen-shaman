require "json"
require "http"
require "optparse"


# Place holders for Yelp Fusion's OAuth 2.0 credentials. Grab them
# from https://www.yelp.com/developers/v3/manage_app
CLIENT_ID = "x4DI1po0kVoO3RdomE2Stw"
CLIENT_SECRET = "K2IXMz8fFo9CJSXbDuUMgNKFeqQakZlzXkCujDrh7cRRzQdV5bE8MqSvhHQ9twwn"


# Constants, do not change these
API_HOST = "https://api.yelp.com"
SEARCH_PATH = "/v3/businesses/search"
BUSINESS_PATH = "/v3/businesses/"  # trailing / because we append the business id to the path
TOKEN_PATH = "/oauth2/token"
GRANT_TYPE = "client_credentials"


DEFAULT_BUSINESS_ID = "yelp-washington-dc"
DEFAULT_TERM = "ramen"
DEFAULT_LOCATION = "Washington, DC"
SEARCH_LIMIT = 50


# Make a request to the Fusion API token endpoint to get the access token.
# Returns your access token
def bearer_token
  # Put the url together
  url = "#{API_HOST}#{TOKEN_PATH}"

  raise "Please set your CLIENT_ID" if CLIENT_ID.nil?
  raise "Please set your CLIENT_SECRET" if CLIENT_SECRET.nil?

  # Build our params hash
  params = {
    client_id: CLIENT_ID,
    client_secret: CLIENT_SECRET,
    grant_type: GRANT_TYPE
  }

  response = HTTP.post(url, params: params)
  parsed = response.parse

  "#{parsed['token_type']} #{parsed['access_token']}"
end


# Make a request to the Fusion search endpoint. Full documentation is online at:
# https://www.yelp.com/developers/documentation/v3/business_search
# Returns a parsed json object of the request
def search(term, location)
  url = "#{API_HOST}#{SEARCH_PATH}"
  params = {
    term: term,
    location: location,
    limit: SEARCH_LIMIT
  }

  response = HTTP.auth(bearer_token).get(url, params: params)
  response.parse
end


# Look up a business by a given business id. Full documentation is online at:
# https://www.yelp.com/developers/documentation/v3/business
# Returns a parsed json object of the request
def business(business_id)
  url = "#{API_HOST}#{BUSINESS_PATH}#{business_id}"

  response = HTTP.auth(bearer_token).get(url)
  response.parse
end


options = {}
OptionParser.new do |opts|
  opts.banner = "Example usage: ruby sample.rb (search|lookup) [options]"

  opts.on("-tTERM", "--term=TERM", "Search term (for search)") do |term|
    options[:term] = term
  end

  opts.on("-lLOCATION", "--location=LOCATION", "Search location (for search)") do |location|
    options[:location] = location
  end

  opts.on("-bBUSINESS_ID", "--business-id=BUSINESS_ID", "Business id (for lookup)") do |id|
    options[:business_id] = id
  end

  opts.on("-h", "--help", "Prints this help") do
    puts opts
    exit
  end
end.parse!


command = ARGV


case command.first
when "search"
  term = options.fetch(:term, DEFAULT_TERM)
  location = options.fetch(:location, DEFAULT_LOCATION)

  raise "business_id is not a valid parameter for searching" if options.key?(:business_id)

  response = search(term, location)

  puts "Found #{response["total"]} businesses. Listing #{SEARCH_LIMIT}:"
  response["businesses"].each {|biz|
    puts "{"
    puts "name: '#{biz["name"]}',"
    puts "address: '#{biz["location"]["address1"]},'"
    puts "city: '#{biz["location"]["city"]}',"
    puts "state: '#{biz["location"]["state"]}',"
    puts "zip: '#{biz["location"]["zip_code"]}',"
    puts "img_url: '#{biz["image_url"]}',"
    puts "price: '#{biz["price"]}'"
    puts "},"
  }
when "lookup"
  business_id = options.fetch(:business_id, DEFAULT_BUSINESS_ID)


  raise "term is not a valid parameter for lookup" if options.key?(:term)
  raise "location is not a valid parameter for lookup" if options.key?(:lookup)

  response = business(business_id)

  puts "Found business with id #{business_id}:"
  puts JSON.pretty_generate(response)
else
  puts "Please specify a command: search or lookup"
end
