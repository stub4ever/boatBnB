class ChangeDescriptionTypeForBoats < ActiveRecord::Migration
  def up
    change_column :boats, :description, :text
  end

  def down
    change_column :boats, :description, :string
  end
end
