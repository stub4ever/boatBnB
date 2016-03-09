class BoatReview < ActiveRecord::Base
  belongs_to :boat, through: :booking

  validates :rating, presence: true
  validates_numericality_of :rating, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 5
  validates :booking_id, presence: true
  validates :description, presence: true
end
