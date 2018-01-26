# == Schema Information
#
# Table name: payer_b_records
#
#  id                             :integer          not null, primary key
#  record_type                    :string
#  payment_year                   :string
#  corrected_return_indicator     :string
#  name_control                   :string
#  type_of_tin                    :string
#  payee_tin                      :string
#  payer_account_number_for_payee :string
#  payers_office_code             :string
#  blank                          :string
#  payment_amount_1               :string
#  payment_amount_2               :string
#  payment_amount_3               :string
#  payment_amount_4               :string
#  payment_amount_5               :string
#  payment_amount_6               :string
#  payment_amount_7               :string
#  payment_amount_8               :string
#  payment_amount_9               :string
#  payment_amount_a               :string
#  payment_amount_b               :string
#  payment_amount_c               :string
#  payment_amount_d               :string
#  payment_amount_e               :string
#  payment_amount_f               :string
#  payment_amount_g               :string
#  foreign_country_indicator      :string
#  first_payee_name_line          :string
#  second_payee_name_line         :string
#  payee_mailing_address          :string
#  payee_city                     :string
#  payee_state                    :string
#  Payee_zip_code                 :string
#  record_sequence_number         :string
#  created_at                     :datetime         not null
#  updated_at                     :datetime         not null
#

class PayerBRecord < ApplicationRecord
  include Validatable
    require 'csv'

    def self.validations
      {
        payment_amount_g: {
          required: nil,
          length: 12
        },
        foreign_country_indicator: {
          required: nil,
          length: 1
        },
        first_payee_name_line: {
          required: nil,
          length: 40
        },
        second_payee_name_line: {
          required: nil,
          length: 40
        },
        blank: {
          required: nil,
          length: 40
        },
        payee_mailing_address: {
          required: "payee_mailing_address",
          length: 40
        },
        blank: {
          required: nil,
          length: 40
        },
        payee_city: {
          required: nil,
          length: 40
        },
        payee_state: {
          required: nil,
          length: 2
        },
        Payee_zip_code: {
          required: nil,
          length: 9
        },
        blank: {
          required: nil,
          length: 1
        },
        record_sequence_number: {
          required: nil,
          length: 8
        },
        blank: {
          required: nil,
          length: 36
        },
      }
    end

    def self.to_csv
        attributes = PayerBRecord.new.attributes.keys

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
