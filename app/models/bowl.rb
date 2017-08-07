class Bowl < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :restaurant
end
