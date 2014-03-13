class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :task_name
      t.string :category
      t.integer :user_id
      t.date :due_date
      t.boolean :complete
      t.string :priority

      t.timestamps
    end
  end
end
