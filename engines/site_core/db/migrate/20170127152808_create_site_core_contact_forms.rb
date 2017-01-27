class CreateSiteCoreContactForms < ActiveRecord::Migration[5.0]
  def change
    create_table :site_core_contact_forms do |t|

      t.timestamps
    end
  end
end
