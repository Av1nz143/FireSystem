class CreateTransmissionFRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :transmission_f_records do |t|
      t.string :record_type
      t.string :number_of_a_records
      t.string :zero
      t.string :blank

      t.timestamps
    end
  end
end
