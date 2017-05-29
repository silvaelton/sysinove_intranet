class CreateInternalStaffActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :internal_staff_activities do |t|

      t.integer :staff_id 
      t.integer :sector_id 
      t.boolean :include_inactive_sector, default: false
      t.boolean :include_inactive_job, default: false
      t.integer :job_id 
      t.string  :staff_function
      t.date    :date_end
      
      t.timestamps
    end
  end
end
