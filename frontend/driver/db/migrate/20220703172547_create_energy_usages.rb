class CreateEnergyUsages < ActiveRecord::Migration
  def change
    create_table :energy_usages do |t|
      t.string :driver_id

      t.timestamps null: false
    end
  end
end
