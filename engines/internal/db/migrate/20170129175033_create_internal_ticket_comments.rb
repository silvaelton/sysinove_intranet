class CreateInternalTicketComments < ActiveRecord::Migration[5.0]
  def change
    create_table :internal_ticket_comments do |t|

      t.integer :ticket_id, index: true 
      t.text    :content

      t.integer :comment_type, default: 0
      t.timestamps
    end
  end
end
