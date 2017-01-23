class CreateCommercialSuppliers < ActiveRecord::Migration[5.0]
  def change
    create_table :commercial_suppliers do |t|
      
      t.integer :account_id, index: true 
      t.integer :supplier_category_id, index: true
      t.integer :supplier_type, default: 0
      t.string  :social_reason
      t.string  :personal_name
      t.string  :cpf_cnpj
      t.integer :state_id, index: true 
      t.string  :city 
      t.string  :address
      t.string  :cep 
      t.string  :complement_address
      t.text    :observation

      t.timestamps
    end
  end
end
