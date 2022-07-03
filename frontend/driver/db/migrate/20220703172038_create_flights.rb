class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.string :driver_id

      t.timestamps null: false
    end
  end
end
