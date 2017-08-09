class ToppingsController < ApplicationController
   def show
     @topping = Topping.find(params[:id])
     @bowls = @topping.bowls
   end
end
