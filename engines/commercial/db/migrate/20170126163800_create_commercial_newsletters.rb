class CreateCommercialNewsletters < ActiveRecord::Migration[5.0]
  def change
    create_table :commercial_newsletters do |t|
      t.integer :account_id, index: true
      t.string  :title
      t.text    :content 
      t.boolean :status, default: false
      t.timestamps
    end
  end
end
