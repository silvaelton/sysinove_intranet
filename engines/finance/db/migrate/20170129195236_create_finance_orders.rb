class CreateFinanceOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :finance_orders do |t|

      t.integer :account_id, index: true
      t.integer :wallet_id, index: true
      t.integer :order_type, default: 0
      t.integer :order_categoy_id, index: true
      t.string  :title
      t.text    :description
      t.string  :note
      t.string  :note_number
      t.text    :observation
      t.float   :value, default: 0
      t.integer :situation, default: 0

      t.timestamps
    end
  end
end
