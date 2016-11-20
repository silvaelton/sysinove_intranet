class CreateInternalStaffs < ActiveRecord::Migration[5.0]
  def change
    create_table :internal_staffs do |t|

      t.integer :account_id, index: true

      t.string :name 
      t.string :cpf
      t.string :rg 
      t.string :rg_org 
      t.string :city
      t.string :cep
      t.integer :state_id
      
      t.string :address
      t.string :complement
      t.string :telephone
      t.string :telephone_optional
      t.string :celphone
      t.string :email
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
