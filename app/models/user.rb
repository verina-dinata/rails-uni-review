class User < ApplicationRecord
  has_many :educations
  has_many :reviews
  has_many :favorites
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, :email, presence: true
  validates :password, length: { minimum: 6 }
  validates :password, confirmation: true
end
