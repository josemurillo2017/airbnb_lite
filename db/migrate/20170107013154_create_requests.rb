class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :guest_id
      t.integer :listing_id
      t.date :date
      t.boolean :request_accepted

      t.timestamps

    end
  end
end
