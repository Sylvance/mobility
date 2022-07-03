class CreateStations < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.string :station_id
      t.string :name
      t.string :location
      t.string :created_at
      t.string :modified_at
      t.string :deleted_at
      t.integer :battery_count
      t.integer :charging_ports_count

      t.timestamps null: false
    end
  end
end
