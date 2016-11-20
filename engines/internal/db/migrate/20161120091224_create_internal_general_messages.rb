class CreateInternalGeneralMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :internal_general_messages do |t|

      t.timestamps
    end
  end
end
