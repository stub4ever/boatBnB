class BoatReview < ActiveRecord::Base
  belongs_to :booking

  validates :rating
  validates_numericality_of :rating, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 5
  validates  :boat_id, presence: true
end
