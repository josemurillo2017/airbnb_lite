class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.boolean :private_room
      t.boolean :entire_home
      t.string :description
      t.integer :no_of_bedrooms
      t.integer :no_of_bathrooms
      t.integer :no_of_beds
      t.integer :max_occupancy
      t.string :city
      t.string :neighborhood
      t.integer :default_price_per_night

      t.timestamps

    end
  end
end
