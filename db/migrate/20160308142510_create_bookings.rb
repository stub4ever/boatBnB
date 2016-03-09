class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :renter_id
      t.integer :owner_id

      t.date :check_in_date
      t.date :check_out_date
      t.string :description
      t.string :status

      t.timestamps null: false
    end

    add_foreign_key :bookings, :users, column: "renter_id"
    add_foreign_key :bookings, :users, column: "owner_id"

    add_index :bookings, :renter_id
    add_index :bookings, :owner_id
  end
end
