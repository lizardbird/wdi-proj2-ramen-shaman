# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'yelp'

Yelp.client.configure do |config|
  config.consumer_key = "x4DI1po0kVoO3RdomE2Stw"
  config.consumer_secret = "K2IXMz8fFo9CJSXbDuUMgNKFeqQakZlzXkCujDrh7cRRzQdV5bE8MqSvhHQ9twwn"
  config.token = YOUR_TOKEN
  config.token_secret = YOUR_TOKEN_SECRET
end

Yelp.client.search('Washington DC', { term: 'ramen' })

Restaurant.destroy_all
Bowl.destroy_all
Comment.destroy_all

liz = User.create!(name: "Liz", email: 'eghelms@gmail.com', password: "password")

rests = Restaurant.create([
  {
    name: "Jinya Ramen Bar - Mosaic District",
    address: "2911 District Ave #140",
    city: "Fairfax",
    state: "Virginia",
    zip: "22031",
    img_url: "https://s3-media3.fl.yelpcdn.com/bphoto/nyVuzRxySJrU7KGiYqPH5w/o.jpg"
  },
  {
    name: "Chaplin's Restaurant",
    address: "1501 9th St NW",
    city: "Washington",
    state: "DC",
    zip: "20001",
    img_url: "http://2.bp.blogspot.com/-iCsHmc2l3vI/VJOGXivEUhI/AAAAAAAAP-4/Oz1n1JhFTqA/s1600/IMG_7246.JPG"
  },
  {
    name: "Daikaya",
    address: "705 6th St NW",
    city: "Washington",
    state: "DC",
    zip: "20001",
    img_url: "http://farm9.staticflickr.com/8085/8492629180_f3e007bc2b_o.jpg"
  }
])

bowls = liz.bowls.create!([
  {
    price: 10,
    broth: "miso",
    noodle: "buckwheat",
    protein: "pork",
    is_veg: false,
    title: "This is a bowl",
    review: "Butter Nissin instant cup ramen ramen burger Nissin instant cup ramen Tokushima soy sauce scallions abura soba yuzu bamboo slices pork bones bamboo slices rice Yokohama soy sauce toasted sesame seeds Tokyo rice. Fish broth miso abura soba pork bones soy sauce Hakata corn Hakodate scallions curry Asahikawa soy sauce pork cubes. Hakata bean sprouts pork bones miso chilli flavoured oil minced garlic Kagoshima. Hakata fish broth Asahikawa pork cubes Wakayama Kagoshima leek Kagoshima lard spinach Tokyo.",
    img_url: "https://ramenipsum.herokuapp.com/assets/img/afuri_yuzu_shio.jpg",
    restaurant: rests[0]
  },
  {
    price: 15,
    broth: "shio",
    noodle: "wheat",
    protein: "tofu",
    is_veg: true,
    title: "This is a bowl",
    review: "Butter Nissin instant cup ramen ramen burger Nissin instant cup ramen Tokushima soy sauce scallions abura soba yuzu bamboo slices pork bones bamboo slices rice Yokohama soy sauce toasted sesame seeds Tokyo rice. Fish broth miso abura soba pork bones soy sauce Hakata corn Hakodate scallions curry Asahikawa soy sauce pork cubes. Hakata bean sprouts pork bones miso chilli flavoured oil minced garlic Kagoshima. Hakata fish broth Asahikawa pork cubes Wakayama Kagoshima leek Kagoshima lard spinach Tokyo.",
    img_url: "https://media.blueapron.com/recipes/124/c_main_dish_images/20140808-1822-348-1459/VegetarianMisoRamen_BlueApron_high_feature.jpg",
    restaurant: rests[2]
  }
])

liz.comments.create!(
  {
    name: "Liz",
    email: "eghelms@gmail.com",
    comment: "This is a comment created in the seed file.",
    bowl: bowls[1]
  }
)
