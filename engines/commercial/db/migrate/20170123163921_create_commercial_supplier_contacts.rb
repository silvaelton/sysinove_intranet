class CreateCommercialSupplierContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :commercial_supplier_contacts do |t|

      t.integer :supplier_id, index: true 
      
      t.string  :name 
      t.string  :telephone
      t.string  :telephone_secundary
      t.string  :email

      t.timestamps
    end
  end
end
