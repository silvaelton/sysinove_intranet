class CreateFinanceBilletBanks < ActiveRecord::Migration[5.0]
  def change
    create_table :finance_billet_banks do |t|

      t.integer :account_id,  index: true
      t.integer :bank, default: 0
      t.string  :name
      t.string  :wallet
      t.string  :convenant
      t.string  :agency
      t.string  :account 
      
      t.timestamps
    end
  end
end
