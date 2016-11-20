class CreateInternalStaffMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :internal_staff_messages do |t|

      t.timestamps
    end
  end
end
