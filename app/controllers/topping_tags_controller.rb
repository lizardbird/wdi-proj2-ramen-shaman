class ToppingTagsController < ApplicationController
  def new
    @bowl = Bowl.find(params[:bowl_id])
    @topping_tag = @bowl.topping_tags.new
  end

  def create
    @bowl = Bowl.find(params[:bowl_id])
    @topping = Topping.find_or_create_by(name: params[:topping_tag][:topping].downcase)

    existing_tag = ToppingTag.find_by(bowl: @bowl, topping: @topping)
    unless existing_tag
      @bowl.topping_tags.create(topping: @topping)
    end
    redirect_to bowl_path(@bowl)
  end

  private
  def topping_params
    params.require(:topping).permit(:name)
  end
end
