class CreateBatteries < ActiveRecord::Migration
  def change
    create_table :batteries do |t|
      t.string :issue_name
      t.string :battery_id
      t.string :type
      t.string :created_at
      t.string :modified_at
      t.string :deleted_at
      t.integer :charge_percentage
      t.boolean :below_threshold
      t.boolean :at_station
      t.boolean :in_flight
      t.string :flight_id

      t.timestamps null: false
    end
  end
end
