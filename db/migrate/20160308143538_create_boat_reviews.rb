class CreateBoatReviews < ActiveRecord::Migration
  def change
    create_table :boat_reviews do |t|
      t.text :description
      t.integer :rating
      t.references :booking, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
