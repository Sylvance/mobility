class CreatePaymentHistories < ActiveRecord::Migration
  def change
    create_table :payment_histories do |t|
      t.string :driver_id

      t.timestamps null: false
    end
  end
end
