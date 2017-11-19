class CreateTransmitterTRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :transmitter_t_records do |t|
      t.string :record_type
      t.string :payment_year
      t.string :prior_year_data_indicator
      t.integer :transmitters_tin
      t.string :tranmitter_control_code
      t.string :blank
      t.string :test_file_indicator
      t.integer :foreign_entity_indicator
      t.text :transmitter_name
      t.text :companyname
      t.string :company_mailing_address
      t.string :comapny_city
      t.string :company_state
      t.integer :company_zip_code
      t.string :blank
      t.integer :total_no_of_payees
      t.string :contact_name
      t.integer :contact_telephone_number_and_etension
      t.integer :contact_email_address
      t.integer :blank
      t.string :record_sequence_number
      t.string :blank
      t.string :vendor_indicator
      t.string :vendor_name
      t.string :vendor_mailing
      t.string :address
      t.string :vendor_city
      t.string :vendor_state
      t.integer :vendor_zip_code
      t.string :vendor_contact_name
      t.integer :vendor_contact_telephone_number_extension
      t.integer :blank_integer_vendor_foreign_entity_indicator
      t.string :blank
      t.string :blank

      t.timestamps
    end
  end
end
