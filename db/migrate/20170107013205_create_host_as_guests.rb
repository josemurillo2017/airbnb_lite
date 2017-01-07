class CreateHostAsGuests < ActiveRecord::Migration
  def change
    create_table :host_as_guests do |t|
      t.integer :host_id
      t.integer :guest_id

      t.timestamps

    end
  end
end
