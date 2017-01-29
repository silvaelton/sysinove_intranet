class CreateFinanceWallets < ActiveRecord::Migration[5.0]
  def change
    create_table :finance_wallets do |t|

      t.integer :account_id, index: true
      t.string  :name
      t.text    :description 
      t.boolean :status, default: true
      
      t.timestamps 
    end
  end
end
