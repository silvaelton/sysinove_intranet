class CreateInternalStaffs < ActiveRecord::Migration[5.0]
  def change
    create_table :internal_staffs do |t|

      t.integer :account_id, index: true

      t.string :name 
      t.string :cpf
      t.string :rg 
      t.string :rg_org 
      t.date   :born 
      t.string :ctps
      t.string :ctps_serie
      t.date   :cpts_date
      t.string :cpts_state

      t.string :nit

      t.boolean :special_condition, default: false
      t.string  :blood_type
      
      t.string  :bf_pdh
      t.string  :date_admission
      t.string  :date_demission
      t.string  :return_departure
      t.string  :bond

      t.text   :observation
      
      t.string :code
      t.string :username
      t.string :password
      
      t.boolean :user_active, default: false
      t.boolean :situation, default: true
      t.string  :job 
      
      t.decimal :salary
      t.decimal :transport_value
      t.decimal :food_value
      
      t.integer :sector_id

      
      t.timestamps
    end
  end
end

