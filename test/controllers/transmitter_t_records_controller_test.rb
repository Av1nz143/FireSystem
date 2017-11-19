require 'test_helper'

class TransmitterTRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transmitter_t_record = transmitter_t_records(:one)
  end

  test "should get index" do
    get transmitter_t_records_url
    assert_response :success
  end

  test "should get new" do
    get new_transmitter_t_record_url
    assert_response :success
  end

  test "should create transmitter_t_record" do
    assert_difference('TransmitterTRecord.count') do
      post transmitter_t_records_url, params: { transmitter_t_record: { address: @transmitter_t_record.address, blank: @transmitter_t_record.blank, blank: @transmitter_t_record.blank, blank: @transmitter_t_record.blank, blank: @transmitter_t_record.blank, blank: @transmitter_t_record.blank, blank: @transmitter_t_record.blank, blank_integer_vendor_foreign_entity_indicator: @transmitter_t_record.blank_integer_vendor_foreign_entity_indicator, comapny_city: @transmitter_t_record.comapny_city, company_mailing_address: @transmitter_t_record.company_mailing_address, company_state: @transmitter_t_record.company_state, company_zip_code: @transmitter_t_record.company_zip_code, companyname: @transmitter_t_record.companyname, contact_email_address: @transmitter_t_record.contact_email_address, contact_name: @transmitter_t_record.contact_name, contact_telephone_number_and_etension: @transmitter_t_record.contact_telephone_number_and_etension, foreign_entity_indicator: @transmitter_t_record.foreign_entity_indicator, payment_year: @transmitter_t_record.payment_year, prior_year_data_indicator: @transmitter_t_record.prior_year_data_indicator, record_sequence_number: @transmitter_t_record.record_sequence_number, record_type: @transmitter_t_record.record_type, test_file_indicator: @transmitter_t_record.test_file_indicator, total_no_of_payees: @transmitter_t_record.total_no_of_payees, tranmitter_control_code: @transmitter_t_record.tranmitter_control_code, transmitter_name: @transmitter_t_record.transmitter_name, transmitters_tin: @transmitter_t_record.transmitters_tin, vendor_city: @transmitter_t_record.vendor_city, vendor_contact_name: @transmitter_t_record.vendor_contact_name, vendor_contact_telephone_number_extension: @transmitter_t_record.vendor_contact_telephone_number_extension, vendor_indicator: @transmitter_t_record.vendor_indicator, vendor_mailing: @transmitter_t_record.vendor_mailing, vendor_name: @transmitter_t_record.vendor_name, vendor_state: @transmitter_t_record.vendor_state, vendor_zip_code: @transmitter_t_record.vendor_zip_code } }
    end

    assert_redirected_to transmitter_t_record_url(TransmitterTRecord.last)
  end

  test "should show transmitter_t_record" do
    get transmitter_t_record_url(@transmitter_t_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_transmitter_t_record_url(@transmitter_t_record)
    assert_response :success
  end

  test "should update transmitter_t_record" do
    patch transmitter_t_record_url(@transmitter_t_record), params: { transmitter_t_record: { address: @transmitter_t_record.address, blank: @transmitter_t_record.blank, blank: @transmitter_t_record.blank, blank: @transmitter_t_record.blank, blank: @transmitter_t_record.blank, blank: @transmitter_t_record.blank, blank: @transmitter_t_record.blank, blank_integer_vendor_foreign_entity_indicator: @transmitter_t_record.blank_integer_vendor_foreign_entity_indicator, comapny_city: @transmitter_t_record.comapny_city, company_mailing_address: @transmitter_t_record.company_mailing_address, company_state: @transmitter_t_record.company_state, company_zip_code: @transmitter_t_record.company_zip_code, companyname: @transmitter_t_record.companyname, contact_email_address: @transmitter_t_record.contact_email_address, contact_name: @transmitter_t_record.contact_name, contact_telephone_number_and_etension: @transmitter_t_record.contact_telephone_number_and_etension, foreign_entity_indicator: @transmitter_t_record.foreign_entity_indicator, payment_year: @transmitter_t_record.payment_year, prior_year_data_indicator: @transmitter_t_record.prior_year_data_indicator, record_sequence_number: @transmitter_t_record.record_sequence_number, record_type: @transmitter_t_record.record_type, test_file_indicator: @transmitter_t_record.test_file_indicator, total_no_of_payees: @transmitter_t_record.total_no_of_payees, tranmitter_control_code: @transmitter_t_record.tranmitter_control_code, transmitter_name: @transmitter_t_record.transmitter_name, transmitters_tin: @transmitter_t_record.transmitters_tin, vendor_city: @transmitter_t_record.vendor_city, vendor_contact_name: @transmitter_t_record.vendor_contact_name, vendor_contact_telephone_number_extension: @transmitter_t_record.vendor_contact_telephone_number_extension, vendor_indicator: @transmitter_t_record.vendor_indicator, vendor_mailing: @transmitter_t_record.vendor_mailing, vendor_name: @transmitter_t_record.vendor_name, vendor_state: @transmitter_t_record.vendor_state, vendor_zip_code: @transmitter_t_record.vendor_zip_code } }
    assert_redirected_to transmitter_t_record_url(@transmitter_t_record)
  end

  test "should destroy transmitter_t_record" do
    assert_difference('TransmitterTRecord.count', -1) do
      delete transmitter_t_record_url(@transmitter_t_record)
    end

    assert_redirected_to transmitter_t_records_url
  end
end
