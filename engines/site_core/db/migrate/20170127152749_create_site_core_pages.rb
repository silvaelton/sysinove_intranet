class CreateSiteCorePages < ActiveRecord::Migration[5.0]
  def change
    create_table :site_core_pages do |t|

      t.integer :account_id, index: true
      t.integer :category_id, index: true
      t.string  :name 
      t.text    :content
      t.boolean :publish, default: false
      
      t.timestamps
    end
  end
end
