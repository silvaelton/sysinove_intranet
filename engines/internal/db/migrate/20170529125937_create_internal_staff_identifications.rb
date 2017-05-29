class CreateInternalStaffIdentifications < ActiveRecord::Migration[5.0]
  def change
    create_table :internal_staff_identifications do |t|

      t.integer :staff_id 
      t.string  :photo_finger_right_1
      t.string  :photo_finger_right_2
      t.string  :photo_finger_right_3
      t.string  :photo_finger_right_4
      t.string  :photo_finger_right_5

      t.string  :photo_finger_left_1
      t.string  :photo_finger_left_2
      t.string  :photo_finger_left_3
      t.string  :photo_finger_left_4
      t.string  :photo_finger_left_5
      
      t.timestamps  
    end
  end
end
