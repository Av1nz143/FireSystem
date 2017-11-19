# == Schema Information
#
# Table name: transmission_f_records
#
#  id                  :integer          not null, primary key
#  record_type         :string
#  number_of_a_records :string
#  zero                :string
#  blank               :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class TransmissionFRecord < ApplicationRecord
  include Validatable
    require 'csv'

    def self.validations
      {}
    end

    def self.to_csv
        attributes = TransmissionFRecord.new.attributes.keys

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
