class CreateInternalContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :internal_contacts do |t|

      t.timestamps
    end
  end
end
