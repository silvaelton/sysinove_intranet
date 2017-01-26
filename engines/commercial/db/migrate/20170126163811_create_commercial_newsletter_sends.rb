class CreateCommercialNewsletterSends < ActiveRecord::Migration[5.0]
  def change
    create_table :commercial_newsletter_sends do |t|
      t.integer :account_id, index: true
      t.text    :emails
      t.integer :situation, default: 0
      t.integer :newsletter_id, index: true
      t.timestamps
    end
  end
end
