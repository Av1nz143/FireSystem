class CreatePayerBRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :payer_b_records do |t|
      t.string :record_type
      t.string :payment_year
      t.string :corrected_return_indicator
      t.string :name_control
      t.string :type_of_tin
      t.string :payee_tin
      t.string :payer_account_number_for_payee
      t.string :payers_office_code
      t.string :blank
      t.string :payment_amount_1
      t.string :payment_amount_2
      t.string :payment_amount_3
      t.string :payment_amount_4
      t.string :payment_amount_5
      t.string :payment_amount_6
      t.string :payment_amount_7
      t.string :payment_amount_8
      t.string :payment_amount_9
      t.string :payment_amount_a
      t.string :payment_amount_b
      t.string :payment_amount_c
      t.string :payment_amount_d
      t.string :payment_amount_e
      t.string :payment_amount_f
      t.string :payment_amount_g
      t.string :foreign_country_indicator
      t.string :first_payee_name_line
      t.string :second_payee_name_line
      t.string :blank
      t.string :payee_mailing_address
      t.string :blank
      t.string :payee_city
      t.string :payee_state
      t.string :Payee_zip_code
      t.string :blank
      t.string :record_sequence_number
      t.string :blank

      t.timestamps
    end
  end
end
