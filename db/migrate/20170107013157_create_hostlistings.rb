class CreateHostlistings < ActiveRecord::Migration
  def change
    create_table :hostlistings do |t|
      t.integer :host_id
      t.integer :listing_id

      t.timestamps

    end
  end
end
