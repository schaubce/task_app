class CreateSubtasks < ActiveRecord::Migration
  def change
    create_table :subtasks do |t|
      t.string :name
      t.integer :task_id
      t.boolean :complete

      t.timestamps
    end
  end
end
