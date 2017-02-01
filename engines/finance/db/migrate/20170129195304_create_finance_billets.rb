class CreateFinanceBillets < ActiveRecord::Migration[5.0]
  def change
    create_table :finance_billets do |t|

      t.integer :account_id, index: true
      t.integer :bank_billet_id, index: true
      t.integer :wallet_id, index: true
      t.string  :cpf
      t.string  :cnpj
      t.string  :name
      t.text    :description
      t.date    :due
      t.float   :value, default: 0
      t.boolean :paid
      t.date    :paid_date
      t.string  :our_number
      t.string  :barcode
      t.text    :hash_return
      

      t.timestamps
    end
  end
end
