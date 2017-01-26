class CreateCommercialNewsletterSends < ActiveRecord::Migration[5.0]
  def change
    create_table :commercial_newsletter_sends do |t|

      t.timestamps
    end
  end
end
