class CreatePolicies < ActiveRecord::Migration
  def change
    create_table :policies do |t|
      t.string :description

      t.timestamps

    end
  end
end
