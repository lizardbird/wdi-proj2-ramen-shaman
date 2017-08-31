class PagesController < ApplicationController
  def index
  end

  # Technically speaking, if the view can be inferred from the action name (like index
  # above) then you don't have to define an empty controller method for it to work
  
  def myprofile
  end
  def show
    if valid_page?
      render template: "pages/#{params[:page]}"
    else
      render file: "public/404.html", status: :not_found
    end
  end

  private
  def valid_page?
    File.exist?(Pathname.new(Rails.root + "app/views/pages/#{params[:page]}.html.erb"))
  end
end
