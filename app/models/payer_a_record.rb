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

class PayerARecord < ApplicationRecord
    include Validatable
    require 'csv'

    def self.validations
      {
        record_type: {
          required: "A",
          length: 1
        },
        payment_year: {
          required: nil,
          length: 4
        },
        combined_federal_state_filing_program: {
          required: nil,
          length: 1
        },
        blank: {
          required: nil,
          length: 5
        },
        Payer_taxpayer_identification_number_tin: {
          required: nil,
          length: 9
        },
        
      }
    end

    def self.to_csv
      attributes = PayerARecord.new.attributes.keys

      CSV.generate(headers: true) do |csv|
        csv << attributes.map(&:humanize)
  
        all.each do |record|
          csv << attributes.map do |attr|
            field_validation(attr, record.send(attr))
          end
        end
      end
  end
end
