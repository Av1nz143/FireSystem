class CreatePayerCRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :payer_c_records do |t|
      t.string :record_type
      t.string :number_of_payees
      t.string :blank
      t.string :control_total_1
      t.string :control_total_2
      t.string :control_total_3
      t.string :control_total_4
      t.string :control_total_5
      t.string :control_total_6
      t.string :control_total_7
      t.string :control_total_8
      t.string :control_total_9
      t.string :control_total_a
      t.string :control_total_b
      t.string :control_total_c
      t.string :control_total_d
      t.string :control_total_e
      t.string :control_total_f
      t.string :control_total_g
      t.string :blank
      t.string :record_sequence_number
      t.string :blank
      t.string :blank_or_cr_lf

      t.timestamps
    end
  end
end
