class Bowl < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :restaurant
  belongs_to :user
  has_many :favorites
  has_many :users, through: :favorites
end
