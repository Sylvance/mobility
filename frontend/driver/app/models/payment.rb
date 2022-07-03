class Payment
    attr_accessor :paid_by_driver_id,
                  :fulfilled_by_operator_id,
                  :fulfilled_on,
                  :status,
                  :payment_id,
                  :amount,
                  :currency,
                  :created_at,
                  :modified_at
end
