class Topping < ActiveRecord::Base
  has_many :topping_tags
  has_many :bowls, through: :topping_tags
end
