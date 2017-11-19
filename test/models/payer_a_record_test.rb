# == Schema Information
#
# Table name: payer_a_records
#
#  id                                    :integer          not null, primary key
#  record_type                           :string
#  payment_year                          :string
#  combined_federal_state_filing_program :string
#  blank                                 :text
#  payers_tin                            :integer
#  payer_name_control                    :string
#  last_filing_factor                    :string
#  type_of_return                        :string
#  amount_codes                          :string
#  foreign_entity_indictor               :string
#  first_payer_name_line                 :string
#  second_payer_name_line                :string
#  transfer_agent_indicator              :string
#  payers_shipping_address               :string
#  payer_city                            :string
#  payer_state                           :string
#  payer_zip_code                        :integer
#  payers_telephone_number_extension     :integer
#  record_sequence_number                :string
#  blank_of_cr_lf                        :string
#  created_at                            :datetime         not null
#  updated_at                            :datetime         not null
#

require 'test_helper'

class PayerARecordTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
