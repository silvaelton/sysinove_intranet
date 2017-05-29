class CreateInternalStaffTrainings < ActiveRecord::Migration[5.0]
  def change
    create_table :internal_staff_trainings do |t|

      t.integer :staff_id 
      t.string  :training_type 
      t.date    :preview_date
      t.date    :realized_date
      t.date    :confirmation_date
      t.string  :frenquency
      
      t.timestamps
    end
  end
end
