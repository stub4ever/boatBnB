class CreateRenterReviews < ActiveRecord::Migration
  def change
    create_table :renter_reviews do |t|
      t.text :description
      t.integer :rating
      t.references :booking, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
