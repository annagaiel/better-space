class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :space_listings
  has_many :bookings
  has_many :favorites
  has_many :reviews, dependent: :destroy

  def full_name
    return "#{first_name} #{last_name}"
  end
end
