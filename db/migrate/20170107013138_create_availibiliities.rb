class CreateAvailibiliities < ActiveRecord::Migration
  def change
    create_table :availibiliities do |t|
      t.integer :listing_id
      t.date :date
      t.string :price
      t.boolean :is_available
      t.string :message

      t.timestamps

    end
  end
end
