class CreateInternalStaffBenefits < ActiveRecord::Migration[5.0]
  def change
    create_table :internal_staff_benefits do |t|

      t.timestamps
    end
  end
end
