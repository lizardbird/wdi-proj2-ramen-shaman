class Review < ApplicationRecord
  has_many :comments
  has_one :bowl
end
