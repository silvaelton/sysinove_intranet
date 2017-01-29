class CreateInternalTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :internal_tickets do |t|
      
      t.integer :account_id, index: true
      t.integer :situation, default: 0

      t.string  :name
      t.text    :content


      t.timestamps
    end
  end
end
