class CreateMotorcycles < ActiveRecord::Migration
  def change
    create_table :motorcycles do |t|

      t.timestamps null: false
    end
  end
end
