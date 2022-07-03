class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.string :flight_id
      t.string :battery_id
      t.string :initiating_station_id
      t.string :finishing_station_id
      t.string :initiating_operator_id
      t.string :finishing_operator_id
      t.string :motorcycle_id
      t.string :driver_id
      t.string :started_at
      t.string :ended_at
      t.string :status
      t.string :current_location_id
      t.string :current_energy_id
      t.string :current_distance_id
      t.string :current_flight_amount_id
      t.string :final_location_id
      t.string :final_energy_id
      t.string :final_distance_id
      t.string :final_flight_amount_id

      t.timestamps null: false
    end
  end
end
