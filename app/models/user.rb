class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :bowls, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :favorites
  should you 
  has_many :users, through: :favorites
end
