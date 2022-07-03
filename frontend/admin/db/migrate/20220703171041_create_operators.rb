class CreateOperators < ActiveRecord::Migration
  def change
    create_table :operators do |t|
      t.string :operator_id
      t.string :name
      t.string :identification
      t.string :phone_number
      t.string :created_at
      t.string :modified_at
      t.string :deleted_at
      t.string :current_station_id

      t.timestamps null: false
    end
  end
end
