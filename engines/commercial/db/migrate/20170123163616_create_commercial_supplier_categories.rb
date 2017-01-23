class CreateCommercialSupplierCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :commercial_supplier_categories do |t|
      
      t.integer :account_id, index: true 
      t.string  :name 
      t.boolean :status, default: false
      
      t.timestamps
    end
  end
end
