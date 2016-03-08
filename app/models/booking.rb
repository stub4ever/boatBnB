class Booking < ActiveRecord::Base
  belongs_to :renter, :class_name => "User"
  belongs_to :owner, :class_name => "User"
  belongs_to :boat

  validates  :description, :check_in_date, :check_out_date, presence: true
  validates  :boat_id, uniqueness: true
end
