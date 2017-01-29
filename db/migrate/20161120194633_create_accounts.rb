class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|

      t.integer :code

      t.string  :username
      t.string  :password 

      t.string  :name
      t.text    :description
      t.string  :logo_image
      t.string  :subdomain
      t.string  :domain

      t.string  :site_name
      t.string  :site_description
      t.text    :site_meta_tags
      t.string  :site_favicon
      t.boolean :site_newsletter, default: false
      t.boolean :site_contact_form, default: true
      t.integer :site_layout, default: 0
      t.string  :facebook
      t.string  :twitter

      t.timestamps
    end
    
    add_index :accounts, :code, unique: true
    add_index :accounts, :domain, unique: true
    add_index :accounts, :subdomain, unique: true
    add_index :accounts, :usernmae, unique: true
  end
end
