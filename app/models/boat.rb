class Boat < ActiveRecord::Base
  belongs_to :owner, class_name: "User"

  has_many :bookings, dependent: :destroy
  has_many :boat_reviews, through: :bookings

  validates :name, :owner_id, presence: true
  validates :size, :city, :address, presence: true
  validates :category, presence: true
  validates :price, presence: true, :format => {:with => /\A\d+(?:\.\d{0,2})?\z/}
  validates :owner_id, presence: true
end
