class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.integer :guest_id
      t.integer :listing_id

      t.timestamps

    end
  end
end
