class ChangeUserToOwnerInBoats < ActiveRecord::Migration
  def change
    remove_reference :boats, :user

    add_column :boats, :owner_id, :integer
    add_foreign_key :boats, :users, column: 'owner_id'
    add_index :boats, :owner_id
  end
end
