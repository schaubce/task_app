class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :task_name
      t.string :category
      t.integer :user_id
      t.string :due_date
      t.boolean :complete
      t.string :priority

      t.timestamps
    end
  end
end
