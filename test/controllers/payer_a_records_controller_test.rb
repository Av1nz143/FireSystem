require 'test_helper'

class PayerARecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @payer_a_record = payer_a_records(:one)
  end

  test "should get index" do
    get payer_a_records_url
    assert_response :success
  end

  test "should get new" do
    get new_payer_a_record_url
    assert_response :success
  end

  test "should create payer_a_record" do
    assert_difference('PayerARecord.count') do
      post payer_a_records_url, params: { payer_a_record: { amount_codes: @payer_a_record.amount_codes, blank: @payer_a_record.blank, blank: @payer_a_record.blank, blank: @payer_a_record.blank, blank: @payer_a_record.blank, blank_of_cr_lf: @payer_a_record.blank_of_cr_lf, combined_federal_state_filing_program: @payer_a_record.combined_federal_state_filing_program, first_payer_name_line: @payer_a_record.first_payer_name_line, foreign_entity_indictor: @payer_a_record.foreign_entity_indictor, last_filing_factor: @payer_a_record.last_filing_factor, payer_city: @payer_a_record.payer_city, payer_name_control: @payer_a_record.payer_name_control, payer_state: @payer_a_record.payer_state, payer_zip_code: @payer_a_record.payer_zip_code, payers_shipping_address: @payer_a_record.payers_shipping_address, payers_telephone_number_extension: @payer_a_record.payers_telephone_number_extension, payers_tin: @payer_a_record.payers_tin, payment_year: @payer_a_record.payment_year, record_sequence_number: @payer_a_record.record_sequence_number, record_type: @payer_a_record.record_type, second_payer_name_line: @payer_a_record.second_payer_name_line, transfer_agent_indicator: @payer_a_record.transfer_agent_indicator, type_of_return: @payer_a_record.type_of_return } }
    end

    assert_redirected_to payer_a_record_url(PayerARecord.last)
  end

  test "should show payer_a_record" do
    get payer_a_record_url(@payer_a_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_payer_a_record_url(@payer_a_record)
    assert_response :success
  end

  test "should update payer_a_record" do
    patch payer_a_record_url(@payer_a_record), params: { payer_a_record: { amount_codes: @payer_a_record.amount_codes, blank: @payer_a_record.blank, blank: @payer_a_record.blank, blank: @payer_a_record.blank, blank: @payer_a_record.blank, blank_of_cr_lf: @payer_a_record.blank_of_cr_lf, combined_federal_state_filing_program: @payer_a_record.combined_federal_state_filing_program, first_payer_name_line: @payer_a_record.first_payer_name_line, foreign_entity_indictor: @payer_a_record.foreign_entity_indictor, last_filing_factor: @payer_a_record.last_filing_factor, payer_city: @payer_a_record.payer_city, payer_name_control: @payer_a_record.payer_name_control, payer_state: @payer_a_record.payer_state, payer_zip_code: @payer_a_record.payer_zip_code, payers_shipping_address: @payer_a_record.payers_shipping_address, payers_telephone_number_extension: @payer_a_record.payers_telephone_number_extension, payers_tin: @payer_a_record.payers_tin, payment_year: @payer_a_record.payment_year, record_sequence_number: @payer_a_record.record_sequence_number, record_type: @payer_a_record.record_type, second_payer_name_line: @payer_a_record.second_payer_name_line, transfer_agent_indicator: @payer_a_record.transfer_agent_indicator, type_of_return: @payer_a_record.type_of_return } }
    assert_redirected_to payer_a_record_url(@payer_a_record)
  end

  test "should destroy payer_a_record" do
    assert_difference('PayerARecord.count', -1) do
      delete payer_a_record_url(@payer_a_record)
    end

    assert_redirected_to payer_a_records_url
  end
end
