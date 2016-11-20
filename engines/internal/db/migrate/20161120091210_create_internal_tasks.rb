class CreateInternalTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :internal_tasks do |t|

      t.timestamps
    end
  end
end
