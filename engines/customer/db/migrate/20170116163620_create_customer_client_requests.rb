class CreateCustomerClientRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :customer_client_requests do |t|

      t.integer :account_id, integer: true
      t.integer :client_id, integer: true 
      t.text    :content
      t.string  :file_path
      t.integer :client_request_type, default: 0
      t.boolean :read, default: false
      t.boolean :complete, default: false
      t.timestamps
    end
  end
end
