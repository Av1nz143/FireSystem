# == Schema Information
#
# Table name: transmitter_t_records
#
#  id                                            :integer          not null, primary key
#  record_type                                   :string
#  payment_year                                  :string
#  prior_year_data_indicator                     :string
#  transmitters_tin                              :integer
#  tranmitter_control_code                       :string
#  blank                                         :string
#  test_file_indicator                           :string
#  foreign_entity_indicator                      :integer
#  transmitter_name                              :text
#  companyname                                   :text
#  company_mailing_address                       :string
#  comapny_city                                  :string
#  company_state                                 :string
#  company_zip_code                              :integer
#  total_no_of_payees                            :integer
#  contact_name                                  :string
#  contact_telephone_number_and_etension         :integer
#  contact_email_address                         :integer
#  record_sequence_number                        :string
#  vendor_indicator                              :string
#  vendor_name                                   :string
#  vendor_mailing                                :string
#  address                                       :string
#  vendor_city                                   :string
#  vendor_state                                  :string
#  vendor_zip_code                               :integer
#  vendor_contact_name                           :string
#  vendor_contact_telephone_number_extension     :integer
#  blank_integer_vendor_foreign_entity_indicator :integer
#  created_at                                    :datetime         not null
#  updated_at                                    :datetime         not null
#

class TransmitterTRecord < ApplicationRecord
  include Validatable

    require 'csv'

    def self.validations
      {
        record_type: {
          required: "T",
          length: 1
        },
        payment_year: {
          required: "2017"
          length: 4
        },
        prior_year_data_indicator: {
          required: "P",
          length: 1
        },
        transmitters_tin: {
          required: nil,
          length: 9
        },
        tranmitter_control_code: {
          required: nil,
          length: 5
        },
        blank: {
          required: nil,
          length: 7
        },
        test_file_indicator: {
          required: nil,
          length: 1
        },
        foreign_entity_indicator: {
          required: nil,
          length: 1
        },
        transmitter_name: {
          required: nil,
          length: 80
        },
        company_name: {
          required: nil,
          length: 80
        },
        company_name: {
          required: nil,
          length: 80
        },
        company_mailing_address: {
          required: nil,
          length: 40
        },
        comapny_city: {
          required: nil,
          length: 40
        },
        company_state: {
          required: nil,
          length: 2
        },
        company_zip_code: {
          required: nil,
          length: 9
        },
        blank: {
          required: nil,
          length: 15
        },
        total_no_of_payees: {
          required: nil, 
          length: 8
        },
        contact_name: {
          required: nil,
          length: 40
        },
        contact_telephone_number_and_etension: {
          required: nil,
          length: 15
        },
        contact_email_address: {
          required: nil,
          length: 50
        },
        blank: {
          required: nil,
          length: 91
        },
        record_sequence_number: {
          required: nil,
          length: 8
        },
        blank: {
          required: nil,
          length: 10
        },
        vendor_indicator: {
          required: nil,
          length: 1
        },
        vendor_name: {
          required: nil,
          length:40
        },
        vendor_mailing_address: {
          required: nil,
          length: 40
        },
        vendor_city: {
          required: nil,
          length: 40
        },
        vendor_state: {
          required: nil,
          length: 2
        },
        vendor_zip_code: {
          required: nil,
          length: 9
        },
        vendor_contact_name: {
          required: nil,
          length: 40
        },
        vendor_contact_telephone_number_extension: {
          required: nil,
          length: 15
        },
        blank: {
          required: nil,
          length: 35
        },
        vendor_foreign_entity_indicator: {
          required: nil,
          length: 1
        },
        blank: {
          required: nil,
          length: 8
        },
        blank: {
          required: nil,
          length: 2
        },
      }
    end

    def self.to_csv
        attributes = TransmitterTRecord.new.attributes.keys

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
