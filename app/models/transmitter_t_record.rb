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
    require 'csv'

    def self.to_csv
        attributes = TransmitterTRecord.new.attributes.keys

        CSV.generate(headers: true) do |csv|
          csv << attributes.map(&:humanize)
    
          all.each do |record|
            csv << attributes.map{ |attr| record.send(attr) }
          end
        end
    end
end
