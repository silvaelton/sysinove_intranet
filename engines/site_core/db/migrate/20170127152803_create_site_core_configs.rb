class CreateSiteCoreConfigs < ActiveRecord::Migration[5.0]
  def change
    create_table :site_core_configs do |t|

      t.timestamps
    end
  end
end
