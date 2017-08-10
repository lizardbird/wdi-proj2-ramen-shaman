class BowlsController < ApplicationController

  # GET /bowls
  def index
    @bowls = Bowl.all
  end

  # GET /bowls/new
  def new
    @bowl = Bowl.new
  end

  # POST /bowls
  def create
    @bowl = current_user.bowls.new(bowl_params)
    if @bowl.save
      flash[:notice] = "#{@bowl.title} created successfully."
      redirect_to bowl_path(@bowl)
    else
      flash[:alert] = "Something went wrong trying to save your bowl!"
      render :new
    end
  end

  # GET /bowls/1
  def show
    @bowl = Bowl.find(params[:id])
    @restaurant = @bowl.restaurant
    @comments = @bowl.comments
    @topping_tag = ToppingTag.new
  end

  # GET /bowls/1/edit
  def edit
    @bowl = Bowl.find(params[:id])
    if @bowl.user != current_user
      flash[:alert] = "Only the author of a bowl can edit!"
      redirect_to bowl_path(@bowl)
    end
  end

  # PATCH/PUT /bowls/1
  def update
    @bowl = Bowl.find(params[:id])
    if @bowl.user == current_user
      @bowl.update(bowl_params)
      flash[:notice] = "Bowl updated successfully."
    else
      flash[:alert] = "Only the author of a bowl can edit!"
    end
    redirect_to bowl_path(@bowl)
  end

  # DELETE /bowls/1
  def destroy
    @bowl = Bowl.find(params[:id])
    if @bowl.user == current_user
      @bowl.destroy
      flash[:alert] = "Bowl deleted!"
    else
      flash[:alert] = "Only the author of a bowl can delete it!"
    end
    redirect_to bowls_path
  end

  def add_favorite
    @bowl = Bowl.find(params[:id])
    @bowl.favorites.create(user: current_user)
    redirect_to bowl_path(@bowl)
  end

  def remove_favorite
    @bowl = Bowl.find(params[:id])
    Favorite.find_by(user: current_user, bowl_id: params[:id]).destroy
    redirect_to bowl_path(@bowl)
  end

  private
    # Prevent evil people from messing with my params
    def bowl_params
      params.require(:bowl).permit(:price, :broth, :noodle, :protein, :is_veg, :title, :review, :img_url, :restaurant_id)
    end
end
