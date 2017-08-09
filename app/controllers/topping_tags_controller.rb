class ToppingTagsController < ApplicationController
  def new
    @bowl = Bowl.find(params[:bowl_id])
    @topping_tag = @bowl.topping_tags.new
  end

  def create
    @bowl = Bowl.find(params[:bowl_id])
    @topping = Topping.find_by(topping_params)
    if ToppingTag.find_by(bowl: @bowl, topping: @topping)
    else
      @topping_tag = @bowl.topping_tags.create
      if @topping_tag.topping = @topping
      else
        @topping_tag.topping = Topping.create(topping_params)
      end
      @topping_tag.save
    end
    redirect_to bowl_path(@bowl)
  end

  private
  def topping_params
    params.require(:topping).permit(:name)
  end
end
