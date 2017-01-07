class CreateListingreviews < ActiveRecord::Migration
  def change
    create_table :listingreviews do |t|
      t.integer :listing_id
      t.integer :accuracy
      t.string :communication
      t.string :cleanliness
      t.integer :location
      t.integer :check_in
      t.integer :value
      t.text :body

      t.timestamps

    end
  end
end
