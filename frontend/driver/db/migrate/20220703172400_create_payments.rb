class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :paid_by_driver_id
      t.string :fulfilled_by_operator_id
      t.string :fulfilled_on
      t.boolean :status
      t.string :payment_id
      t.string :amount
      t.string :currency
      t.string :created_at
      t.string :modified_at

      t.timestamps null: false
    end
  end
end
