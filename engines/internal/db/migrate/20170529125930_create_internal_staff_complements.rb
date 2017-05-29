class CreateInternalStaffComplements < ActiveRecord::Migration[5.0]
  def change
    create_table :internal_staff_complements do |t|

      t.integer :staff_id 
      t.string  :address
      t.string  :state
      t.string  :city 
      t.string  :district
      t.string  :cep 
      t.string  :telephone
      t.string  :color_breed
      t.float   :month_salary
      t.string  :schooling
      t.string  :mother_name
      t.string  :email
      t.string  :foresight_filiation
      t.string  :civil_state 
      t.boolean :retired, default: false
      t.string  :cnh
      t.date    :cnh_validate
      t.float   :dangerousness
      t.float   :unhealthy
      t.float   :additional_salary_1
      t.float   :additional_salary_2

      t.timestamps
    end
  end
end
