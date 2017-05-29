class CreateInternalStaffAbsenteeisms < ActiveRecord::Migration[5.0]
  def change
    create_table :internal_staff_absenteeisms do |t|

      t.integer :staff_id 
      t.date    :date_start
      t.hour    :hour_start
      t.date    :date_preview_return
      t.date    :date_preview_start 
      t.string  :reason 
      t.string  :chapter 
      t.string  :division
      t.string  :cid 
      t.string  :observation 
      t.string  :date_return 
      t.string  :departure
      
      t.timestamps
    end
  end
end
