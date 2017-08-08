class RestaurantsController < ApplicationController

  # GET /restaurants
  def index
    @restaurants = Restaurant.all.sort
    @restaurants.sort! { |a,b| a.name.downcase <=> b.name.downcase }
  end

  # GET /restaurants/new
  def new
    @restaurant = Restaurant.new
  end

  # POST /restaurants
  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      flash[:notice] = "#{@restaurant.name} created successfully."
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  # GET /restaurants/1
  def show
    @restaurant = Restaurant.find(params[:id])
    @bowls = @restaurant.bowls
  end

  # GET /restaurants/1/edit
  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  # PATCH/PUT /restaurants/1
  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(restaurant_params)
    flash[:notice] = "Restaurant updated successfully."
    redirect_to restaurant_path(@restaurant)
  end

  # DELETE /restaurants/1
  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    flash[:alert] = "Restaurant deleted!"
    redirect_to restaurants_path
  end

  private
    # Prevent evil people from messing with my params
    def restaurant_params
      params.require(:restaurant).permit(:name, :address, :city, :zip, :img_url)
    end
end
