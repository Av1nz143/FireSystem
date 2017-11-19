require 'test_helper'

class TransmissionFRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transmission_f_record = transmission_f_records(:one)
  end

  test "should get index" do
    get transmission_f_records_url
    assert_response :success
  end

  test "should get new" do
    get new_transmission_f_record_url
    assert_response :success
  end

  test "should create transmission_f_record" do
    assert_difference('TransmissionFRecord.count') do
      post transmission_f_records_url, params: { transmission_f_record: { blank: @transmission_f_record.blank, number_of_a_records: @transmission_f_record.number_of_a_records, record_type: @transmission_f_record.record_type, zero: @transmission_f_record.zero } }
    end

    assert_redirected_to transmission_f_record_url(TransmissionFRecord.last)
  end

  test "should show transmission_f_record" do
    get transmission_f_record_url(@transmission_f_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_transmission_f_record_url(@transmission_f_record)
    assert_response :success
  end

  test "should update transmission_f_record" do
    patch transmission_f_record_url(@transmission_f_record), params: { transmission_f_record: { blank: @transmission_f_record.blank, number_of_a_records: @transmission_f_record.number_of_a_records, record_type: @transmission_f_record.record_type, zero: @transmission_f_record.zero } }
    assert_redirected_to transmission_f_record_url(@transmission_f_record)
  end

  test "should destroy transmission_f_record" do
    assert_difference('TransmissionFRecord.count', -1) do
      delete transmission_f_record_url(@transmission_f_record)
    end

    assert_redirected_to transmission_f_records_url
  end
end
