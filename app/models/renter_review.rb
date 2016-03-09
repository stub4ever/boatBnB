class RenterReview < ActiveRecord::Base
  belongs_to :booking

  validates :rating, presence: true
  validates_numericality_of :rating, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 5
  validates :renter_id, presence: true
  validates :description, presence: true
end
