class CreateAssignedFlights < ActiveRecord::Migration
  def change
    create_table :assigned_flights do |t|
      t.string :driver_id

      t.timestamps null: false
    end
  end
end
