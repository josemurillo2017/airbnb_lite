class CreateHostphotos < ActiveRecord::Migration
  def change
    create_table :hostphotos do |t|
      t.integer :photo_id
      t.integer :listing_id

      t.timestamps

    end
  end
end
