class CreateCustomerClientDocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :customer_client_documents do |t|

      t.integer  :account_id, index: true
      t.integer  :client_id, index: true 
      t.text     :description
      t.string   :title 
      t.string   :file_path
      t.boolean  :read, default: false
      
      t.timestamps
    end
  end
end
