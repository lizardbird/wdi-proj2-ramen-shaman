class Bowl < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :restaurant
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :users, through: :favorites
  has_many :topping_tags, dependent: :destroy
  has_many :toppings, through: :topping_tags
end
