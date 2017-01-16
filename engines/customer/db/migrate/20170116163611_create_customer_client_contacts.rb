class CreateCustomerClientContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :customer_client_contacts do |t|

      t.integer :account_id, index: true 
      t.integer :client_id, index: true 
      t.string  :name 
      t.string  :telephone
      t.string  :telephone_secundary
      t.string  :email
      
      t.timestamps
    end
  end
end
