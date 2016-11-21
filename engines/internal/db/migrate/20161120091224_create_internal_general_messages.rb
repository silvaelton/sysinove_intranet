class CreateInternalGeneralMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :internal_general_messages do |t|
      t.integer :account_id, index: true 
      t.integer :staff_id, index: true
      t.text    :content 
      t.timestamps
    end
  end
end
