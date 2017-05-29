class CreateInternalStaffRestrictions < ActiveRecord::Migration[5.0]
  def change
    create_table :internal_staff_restrictions do |t|

      t.integer :staff_id 
      t.date    :start 
      t.date    :end 
      t.text    :restriction 
      
      t.timestamps
    end
  end
end
