class CreatePayerARecords < ActiveRecord::Migration[5.1]
  def change
    create_table :payer_a_records do |t|
      t.string :record_type
      t.string :payment_year
      t.string :combined_federal_state_filing_program
      t.string :blank
      t.integer :payers_tin
      t.string :payer_name_control
      t.string :last_filing_factor
      t.string :type_of_return
      t.string :amount_codes
      t.string :blank
      t.string :foreign_entity_indictor
      t.string :first_payer_name_line
      t.string :second_payer_name_line
      t.string :transfer_agent_indicator
      t.string :payers_shipping_address
      t.string :payer_city
      t.string :payer_state
      t.integer :payer_zip_code
      t.integer :payers_telephone_number_extension
      t.text :blank
      t.string :record_sequence_number
      t.text :blank
      t.string :blank_of_cr_lf

      t.timestamps
    end
  end
end
