class CreateCustomerClientAlerts < ActiveRecord::Migration[5.0]
  def change
    create_table :customer_client_alerts do |t|

      t.integer :account_id, index: true 
      t.integer :client_id, index: true 
      t.text    :content 
      t.integer :priority, default: 0
      t.boolean :publish, default: false
      t.date    :expires_at
      
      t.timestamps
    end
  end
end
