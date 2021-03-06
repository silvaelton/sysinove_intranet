class CreateCustomerClientMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :customer_client_messages do |t|

      t.integer :account_id, index: true
      t.integer :client_id, index: true
      t.text    :content
      t.boolean :read, default: false 
      t.integer :client_message_type, default: 0

      t.timestamps
    end
  end
end
