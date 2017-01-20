class CreateCustomerClients < ActiveRecord::Migration[5.0]
  def change
    create_table :customer_clients do |t|

      t.integer :account_id, index: true 
      t.integer :client_category_id, index: true
      t.integer :client_type, default: 0
      t.string  :personal_name
      t.string  :fantasy_name
      t.string  :company_name
      t.string  :cpf_cnpj
      t.string  :state_number 
      t.string  :city_number 
      t.string  :address
      t.integer :state_id
      t.string  :city 
      t.string  :complement_address 
      t.boolean :status 
      t.text    :observation 
      t.string  :cep

      t.timestamps
    end
  end
end
