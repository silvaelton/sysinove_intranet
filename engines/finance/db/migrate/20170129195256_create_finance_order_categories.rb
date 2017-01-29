class CreateFinanceOrderCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :finance_order_categories do |t|

      t.integer :account_id, index: true
      t.string  :name 
      t.boolean :status, default: true
      t.timestamps
    end
  end
end
