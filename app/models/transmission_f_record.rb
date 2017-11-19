class TransmissionFRecord < ApplicationRecord
    require 'csv'

    def self.to_csv
        attributes = TransmissionFRecord.new.attributes.keys

        CSV.generate(headers: true) do |csv|
          csv << attributes.map(&:humanize)
    
          all.each do |record|
            csv << attributes.map{ |attr| record.send(attr) }
          end
        end
    end
end
