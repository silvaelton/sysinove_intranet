class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|

      t.integer :code

      t.timestamps
    end
    
    add_index :accounts, :code, unique: true
  end
end
