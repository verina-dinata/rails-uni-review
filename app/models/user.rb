class User < ApplicationRecord
  has_many :educations
  has_many :reviews
  has_many :favorites
  has_one_attached :photo
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  validates :first_name, :last_name, presence: true

  protected

  def confirmation_required?
    true
  end
end
