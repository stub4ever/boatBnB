class ChangeStatusToDefaultValue < ActiveRecord::Migration
  def self.up
    change_column :bookings, :status, :string, :default => "Pending"
  end
end
