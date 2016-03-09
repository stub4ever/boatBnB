class CreateBoats < ActiveRecord::Migration
  def change
    create_table :boats do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name
      t.text :description
      t.string :category
      t.string :photo
      t.integer :size
      t.string :address
      t.string :city
      t.integer :price

      t.timestamps null: false
    end
  end
end
