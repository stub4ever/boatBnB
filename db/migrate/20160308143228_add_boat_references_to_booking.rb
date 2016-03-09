class AddBoatReferencesToBooking < ActiveRecord::Migration
  def change
    add_reference :bookings, :boat, index: true, foreign_key: true
  end
end
