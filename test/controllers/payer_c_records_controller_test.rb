require 'test_helper'

class PayerCRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @payer_c_record = payer_c_records(:one)
  end

  test "should get index" do
    get payer_c_records_url
    assert_response :success
  end

  test "should get new" do
    get new_payer_c_record_url
    assert_response :success
  end

  test "should create payer_c_record" do
    assert_difference('PayerCRecord.count') do
      post payer_c_records_url, params: { payer_c_record: { blank: @payer_c_record.blank, blank: @payer_c_record.blank, blank: @payer_c_record.blank, blank_or_cr_lf: @payer_c_record.blank_or_cr_lf, control_total_1: @payer_c_record.control_total_1, control_total_2: @payer_c_record.control_total_2, control_total_3: @payer_c_record.control_total_3, control_total_4: @payer_c_record.control_total_4, control_total_5: @payer_c_record.control_total_5, control_total_6: @payer_c_record.control_total_6, control_total_7: @payer_c_record.control_total_7, control_total_8: @payer_c_record.control_total_8, control_total_9: @payer_c_record.control_total_9, control_total_a: @payer_c_record.control_total_a, control_total_b: @payer_c_record.control_total_b, control_total_c: @payer_c_record.control_total_c, control_total_d: @payer_c_record.control_total_d, control_total_e: @payer_c_record.control_total_e, control_total_f: @payer_c_record.control_total_f, control_total_g: @payer_c_record.control_total_g, number_of_payees: @payer_c_record.number_of_payees, record_sequence_number: @payer_c_record.record_sequence_number, record_type: @payer_c_record.record_type } }
    end

    assert_redirected_to payer_c_record_url(PayerCRecord.last)
  end

  test "should show payer_c_record" do
    get payer_c_record_url(@payer_c_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_payer_c_record_url(@payer_c_record)
    assert_response :success
  end

  test "should update payer_c_record" do
    patch payer_c_record_url(@payer_c_record), params: { payer_c_record: { blank: @payer_c_record.blank, blank: @payer_c_record.blank, blank: @payer_c_record.blank, blank_or_cr_lf: @payer_c_record.blank_or_cr_lf, control_total_1: @payer_c_record.control_total_1, control_total_2: @payer_c_record.control_total_2, control_total_3: @payer_c_record.control_total_3, control_total_4: @payer_c_record.control_total_4, control_total_5: @payer_c_record.control_total_5, control_total_6: @payer_c_record.control_total_6, control_total_7: @payer_c_record.control_total_7, control_total_8: @payer_c_record.control_total_8, control_total_9: @payer_c_record.control_total_9, control_total_a: @payer_c_record.control_total_a, control_total_b: @payer_c_record.control_total_b, control_total_c: @payer_c_record.control_total_c, control_total_d: @payer_c_record.control_total_d, control_total_e: @payer_c_record.control_total_e, control_total_f: @payer_c_record.control_total_f, control_total_g: @payer_c_record.control_total_g, number_of_payees: @payer_c_record.number_of_payees, record_sequence_number: @payer_c_record.record_sequence_number, record_type: @payer_c_record.record_type } }
    assert_redirected_to payer_c_record_url(@payer_c_record)
  end

  test "should destroy payer_c_record" do
    assert_difference('PayerCRecord.count', -1) do
      delete payer_c_record_url(@payer_c_record)
    end

    assert_redirected_to payer_c_records_url
  end
end
