class CreateSiteCoreNavs < ActiveRecord::Migration[5.0]
  def change
    create_table :site_core_navs do |t|

      t.integer :account_id, index: true
      t.string  :name 
      t.integer :page_id,    index: true 
      t.integer :post_id,    index: true 
      t.string  :url
      t.integer :nav_type,   default: 0
      t.integer :target,     default: 0 
      t.integer :order,      default: 0
      t.boolean :publish,    default: false
      
      t.timestamps
    end
  end
end
