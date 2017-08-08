class Comment < ApplicationRecord
  belongs_to :bowl
  belongs_to :user
end
