# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171119011638) do

  create_table "data_record_ts", force: :cascade do |t|
    t.string "record_type"
    t.string "payment_year"
    t.string "prior_year_data_indicator"
    t.integer "transmitters_tin"
    t.string "tranmitter_control_code"
    t.string "blank"
    t.string "test_file_indicator"
    t.integer "foreign_entity_indicator"
    t.text "transmitter_name"
    t.text "companyname"
    t.string "company_mailing_address"
    t.string "comapny_city"
    t.string "company_state"
    t.integer "company_zip_code"
    t.integer "total_no_of_payees"
    t.string "contact_name"
    t.integer "contact_telephone_number_and_etension"
    t.integer "contact_email_address"
    t.string "record_sequence_number"
    t.string "vendor_indicator"
    t.string "vendor_name"
    t.string "vendor_mailing"
    t.string "address"
    t.string "vendor_city"
    t.string "vendor_state"
    t.integer "vendor_zip_code"
    t.string "vendor_contact_name"
    t.integer "vendor_contact_telephone_number_extension"
    t.integer "blank_integer_vendor_foreign_entity_indicator"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payer_a_records", force: :cascade do |t|
    t.string "record_type"
    t.string "payment_year"
    t.string "combined_federal_state_filing_program"
    t.text "blank"
    t.integer "payers_tin"
    t.string "payer_name_control"
    t.string "last_filing_factor"
    t.string "type_of_return"
    t.string "amount_codes"
    t.string "foreign_entity_indictor"
    t.string "first_payer_name_line"
    t.string "second_payer_name_line"
    t.string "transfer_agent_indicator"
    t.string "payers_shipping_address"
    t.string "payer_city"
    t.string "payer_state"
    t.integer "payer_zip_code"
    t.integer "payers_telephone_number_extension"
    t.string "record_sequence_number"
    t.string "blank_of_cr_lf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payer_b_records", force: :cascade do |t|
    t.string "record_type"
    t.string "payment_year"
    t.string "corrected_return_indicator"
    t.string "name_control"
    t.string "type_of_tin"
    t.string "payee_tin"
    t.string "payer_account_number_for_payee"
    t.string "payers_office_code"
    t.string "blank"
    t.string "payment_amount_1"
    t.string "payment_amount_2"
    t.string "payment_amount_3"
    t.string "payment_amount_4"
    t.string "payment_amount_5"
    t.string "payment_amount_6"
    t.string "payment_amount_7"
    t.string "payment_amount_8"
    t.string "payment_amount_9"
    t.string "payment_amount_a"
    t.string "payment_amount_b"
    t.string "payment_amount_c"
    t.string "payment_amount_d"
    t.string "payment_amount_e"
    t.string "payment_amount_f"
    t.string "payment_amount_g"
    t.string "foreign_country_indicator"
    t.string "first_payee_name_line"
    t.string "second_payee_name_line"
    t.string "payee_mailing_address"
    t.string "payee_city"
    t.string "payee_state"
    t.string "Payee_zip_code"
    t.string "record_sequence_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payer_c_records", force: :cascade do |t|
    t.string "record_type"
    t.string "number_of_payees"
    t.string "blank"
    t.string "control_total_1"
    t.string "control_total_2"
    t.string "control_total_3"
    t.string "control_total_4"
    t.string "control_total_5"
    t.string "control_total_6"
    t.string "control_total_7"
    t.string "control_total_8"
    t.string "control_total_9"
    t.string "control_total_a"
    t.string "control_total_b"
    t.string "control_total_c"
    t.string "control_total_d"
    t.string "control_total_e"
    t.string "control_total_f"
    t.string "control_total_g"
    t.string "record_sequence_number"
    t.string "blank_or_cr_lf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transmission_f_records", force: :cascade do |t|
    t.string "record_type"
    t.string "number_of_a_records"
    t.string "zero"
    t.string "blank"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transmitter_t_records", force: :cascade do |t|
    t.string "record_type"
    t.string "payment_year"
    t.string "prior_year_data_indicator"
    t.integer "transmitters_tin"
    t.string "tranmitter_control_code"
    t.string "blank"
    t.string "test_file_indicator"
    t.integer "foreign_entity_indicator"
    t.text "transmitter_name"
    t.text "companyname"
    t.string "company_mailing_address"
    t.string "comapny_city"
    t.string "company_state"
    t.integer "company_zip_code"
    t.integer "total_no_of_payees"
    t.string "contact_name"
    t.integer "contact_telephone_number_and_etension"
    t.integer "contact_email_address"
    t.string "record_sequence_number"
    t.string "vendor_indicator"
    t.string "vendor_name"
    t.string "vendor_mailing"
    t.string "address"
    t.string "vendor_city"
    t.string "vendor_state"
    t.integer "vendor_zip_code"
    t.string "vendor_contact_name"
    t.integer "vendor_contact_telephone_number_extension"
    t.integer "blank_integer_vendor_foreign_entity_indicator"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
