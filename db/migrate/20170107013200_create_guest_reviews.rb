class CreateGuestReviews < ActiveRecord::Migration
  def change
    create_table :guest_reviews do |t|
      t.integer :guest_id
      t.integer :overall_rating
      t.text :body

      t.timestamps

    end
  end
end
