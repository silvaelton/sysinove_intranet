class CreateCustomerClientArchives < ActiveRecord::Migration[5.0]
  def change
    create_table :customer_client_archives do |t|

      t.integer :account_id, index: true 
      t.integer :client_id, index: true 
      t.string  :name 
      t.text    :description 
      t.string  :file_path

      t.timestamps
    end
  end
end
