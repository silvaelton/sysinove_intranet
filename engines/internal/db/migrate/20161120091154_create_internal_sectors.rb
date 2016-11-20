class CreateInternalSectors < ActiveRecord::Migration[5.0]
  def change
    create_table :internal_sectors do |t|
      
      t.integer :account_id, index: true
      t.string  :name 
      t.text    :observation
      t.boolean :publish, default: true
      
      t.timestamps
    end
  end
end
