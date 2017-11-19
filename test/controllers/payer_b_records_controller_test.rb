require 'test_helper'

class PayerBRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @payer_b_record = payer_b_records(:one)
  end

  test "should get index" do
    get payer_b_records_url
    assert_response :success
  end

  test "should get new" do
    get new_payer_b_record_url
    assert_response :success
  end

  test "should create payer_b_record" do
    assert_difference('PayerBRecord.count') do
      post payer_b_records_url, params: { payer_b_record: { Payee_zip_code: @payer_b_record.Payee_zip_code, blank: @payer_b_record.blank, blank: @payer_b_record.blank, blank: @payer_b_record.blank, blank: @payer_b_record.blank, blank: @payer_b_record.blank, corrected_return_indicator: @payer_b_record.corrected_return_indicator, first_payee_name_line: @payer_b_record.first_payee_name_line, foreign_country_indicator: @payer_b_record.foreign_country_indicator, name_control: @payer_b_record.name_control, payee_city: @payer_b_record.payee_city, payee_mailing_address: @payer_b_record.payee_mailing_address, payee_state: @payer_b_record.payee_state, payee_tin: @payer_b_record.payee_tin, payer_account_number_for_payee: @payer_b_record.payer_account_number_for_payee, payers_office_code: @payer_b_record.payers_office_code, payment_amount_1: @payer_b_record.payment_amount_1, payment_amount_2: @payer_b_record.payment_amount_2, payment_amount_3: @payer_b_record.payment_amount_3, payment_amount_4: @payer_b_record.payment_amount_4, payment_amount_5: @payer_b_record.payment_amount_5, payment_amount_6: @payer_b_record.payment_amount_6, payment_amount_7: @payer_b_record.payment_amount_7, payment_amount_8: @payer_b_record.payment_amount_8, payment_amount_9: @payer_b_record.payment_amount_9, payment_amount_a: @payer_b_record.payment_amount_a, payment_amount_b: @payer_b_record.payment_amount_b, payment_amount_c: @payer_b_record.payment_amount_c, payment_amount_d: @payer_b_record.payment_amount_d, payment_amount_e: @payer_b_record.payment_amount_e, payment_amount_f: @payer_b_record.payment_amount_f, payment_amount_g: @payer_b_record.payment_amount_g, payment_year: @payer_b_record.payment_year, record_sequence_number: @payer_b_record.record_sequence_number, record_type: @payer_b_record.record_type, second_payee_name_line: @payer_b_record.second_payee_name_line, type_of_tin: @payer_b_record.type_of_tin } }
    end

    assert_redirected_to payer_b_record_url(PayerBRecord.last)
  end

  test "should show payer_b_record" do
    get payer_b_record_url(@payer_b_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_payer_b_record_url(@payer_b_record)
    assert_response :success
  end

  test "should update payer_b_record" do
    patch payer_b_record_url(@payer_b_record), params: { payer_b_record: { Payee_zip_code: @payer_b_record.Payee_zip_code, blank: @payer_b_record.blank, blank: @payer_b_record.blank, blank: @payer_b_record.blank, blank: @payer_b_record.blank, blank: @payer_b_record.blank, corrected_return_indicator: @payer_b_record.corrected_return_indicator, first_payee_name_line: @payer_b_record.first_payee_name_line, foreign_country_indicator: @payer_b_record.foreign_country_indicator, name_control: @payer_b_record.name_control, payee_city: @payer_b_record.payee_city, payee_mailing_address: @payer_b_record.payee_mailing_address, payee_state: @payer_b_record.payee_state, payee_tin: @payer_b_record.payee_tin, payer_account_number_for_payee: @payer_b_record.payer_account_number_for_payee, payers_office_code: @payer_b_record.payers_office_code, payment_amount_1: @payer_b_record.payment_amount_1, payment_amount_2: @payer_b_record.payment_amount_2, payment_amount_3: @payer_b_record.payment_amount_3, payment_amount_4: @payer_b_record.payment_amount_4, payment_amount_5: @payer_b_record.payment_amount_5, payment_amount_6: @payer_b_record.payment_amount_6, payment_amount_7: @payer_b_record.payment_amount_7, payment_amount_8: @payer_b_record.payment_amount_8, payment_amount_9: @payer_b_record.payment_amount_9, payment_amount_a: @payer_b_record.payment_amount_a, payment_amount_b: @payer_b_record.payment_amount_b, payment_amount_c: @payer_b_record.payment_amount_c, payment_amount_d: @payer_b_record.payment_amount_d, payment_amount_e: @payer_b_record.payment_amount_e, payment_amount_f: @payer_b_record.payment_amount_f, payment_amount_g: @payer_b_record.payment_amount_g, payment_year: @payer_b_record.payment_year, record_sequence_number: @payer_b_record.record_sequence_number, record_type: @payer_b_record.record_type, second_payee_name_line: @payer_b_record.second_payee_name_line, type_of_tin: @payer_b_record.type_of_tin } }
    assert_redirected_to payer_b_record_url(@payer_b_record)
  end

  test "should destroy payer_b_record" do
    assert_difference('PayerBRecord.count', -1) do
      delete payer_b_record_url(@payer_b_record)
    end

    assert_redirected_to payer_b_records_url
  end
end
