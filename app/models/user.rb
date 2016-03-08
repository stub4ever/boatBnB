class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :trips, class_name: "User", foreign_key: "renter_id"
  has_many :bookings, class_name: "User", foreign_key: "owner_id"

  has_many :boats
  has_many :renter_reviews, through: :bookings
  validates :first_name, :last_name, presence: true
  validates :city, :address, :phone_number presence: true
end
