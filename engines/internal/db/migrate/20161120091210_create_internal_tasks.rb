class CreateInternalTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :internal_tasks do |t|

      t.integer   :account_id, index: true 
      
      t.string    :title
      t.text      :description
      t.integer   :priority
      t.integer   :situation
      t.integer   :responsible_id
      t.date      :due
      t.integer   :progress

      t.timestamps
    end
  end
end
