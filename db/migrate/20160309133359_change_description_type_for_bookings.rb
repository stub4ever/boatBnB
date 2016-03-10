class ChangeDescriptionTypeForBookings < ActiveRecord::Migration
  def up
    change_column :bookings, :description, :text
  end

  def down
    change_column :bookings, :description, :string
  end
end
