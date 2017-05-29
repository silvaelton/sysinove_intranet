class CreateInternalStaffShifts < ActiveRecord::Migration[5.0]
  def change
    create_table :internal_staff_shifts do |t|

      t.integer :staff_id 
      t.date    :date_start
      t.date    :date_end 
      t.integer :shift_id
      t.time    :hour_start 
      t.time    :hour_end 

      t.timestamps
    end
  end
end
