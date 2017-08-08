class Restaurant < ApplicationRecord
  has_many :bowls
  validates :name, uniqueness: true
end
