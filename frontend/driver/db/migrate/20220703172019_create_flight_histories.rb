class CreateFlightHistories < ActiveRecord::Migration
  def change
    create_table :flight_histories do |t|
      t.string :driver_id

      t.timestamps null: false
    end
  end
end
