class CreateEnergies < ActiveRecord::Migration
  def change
    create_table :energies do |t|

      t.timestamps null: false
    end
  end
end
