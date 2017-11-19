# == Schema Information
#
# Table name: payer_c_records
#
#  id                     :integer          not null, primary key
#  record_type            :string
#  number_of_payees       :string
#  blank                  :string
#  control_total_1        :string
#  control_total_2        :string
#  control_total_3        :string
#  control_total_4        :string
#  control_total_5        :string
#  control_total_6        :string
#  control_total_7        :string
#  control_total_8        :string
#  control_total_9        :string
#  control_total_a        :string
#  control_total_b        :string
#  control_total_c        :string
#  control_total_d        :string
#  control_total_e        :string
#  control_total_f        :string
#  control_total_g        :string
#  record_sequence_number :string
#  blank_or_cr_lf         :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class PayerCRecord < ApplicationRecord
    require 'csv'

    def self.to_csv
        attributes = PayerCRecord.new.attributes.keys

        CSV.generate(headers: true) do |csv|
          csv << attributes.map(&:humanize)
    
          all.each do |record|
            csv << attributes.map{ |attr| record.send(attr) }
          end
        end
    end
end
