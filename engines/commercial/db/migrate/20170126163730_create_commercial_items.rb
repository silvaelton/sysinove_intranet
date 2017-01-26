class CreateCommercialItems < ActiveRecord::Migration[5.0]
  def change
    create_table :commercial_items do |t|

      t.integer :account_id, index: true
      t.integer :item_category_id, index: true 
      t.string  :name
      t.text    :description
      t.string  :photo

      t.float   :value_buy,    default: 0
      t.float   :value_sell,   default: 0
      t.float   :max_discount, default: 0

      t.integer  :unit, default: 0
      t.integer  :quantity, default: 0

      t.text     :observation
      t.boolean  :status, default: true

      t.timestamps
    end
  end
end
