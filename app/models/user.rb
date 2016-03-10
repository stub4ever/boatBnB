class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :trips, dependent: :destroy, class_name: "Booking", foreign_key: "renter_id"
  has_many :bookings, dependent: :destroy, class_name: "Booking", foreign_key: "owner_id"

  has_many :boats, dependent: :destroy, foreign_key: "owner_id"
  has_many :renter_reviews, through: :bookings

  # validates :first_name, :last_name, presence: true
  # validates :city, :address, :phone_number, presence: true
end
