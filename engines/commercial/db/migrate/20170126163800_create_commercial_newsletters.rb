class CreateCommercialNewsletters < ActiveRecord::Migration[5.0]
  def change
    create_table :commercial_newsletters do |t|

      t.timestamps
    end
  end
end
