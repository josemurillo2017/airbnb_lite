class CreateHostpolicies < ActiveRecord::Migration
  def change
    create_table :hostpolicies do |t|
      t.integer :listing_id
      t.integer :policy_id

      t.timestamps

    end
  end
end
