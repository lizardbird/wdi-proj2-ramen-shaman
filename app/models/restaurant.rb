class Restaurant < ApplicationRecord
  has_many :bowls
  # should you have dependent destroy above?
  validates :name, uniqueness: true

  # nice job using validations
end
