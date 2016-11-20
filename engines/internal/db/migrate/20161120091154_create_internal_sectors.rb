class CreateInternalSectors < ActiveRecord::Migration[5.0]
  def change
    create_table :internal_sectors do |t|

      t.timestamps
    end
  end
end
