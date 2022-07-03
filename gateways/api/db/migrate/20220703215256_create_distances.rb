class CreateDistances < ActiveRecord::Migration
  def change
    create_table :distances do |t|

      t.timestamps null: false
    end
  end
end
