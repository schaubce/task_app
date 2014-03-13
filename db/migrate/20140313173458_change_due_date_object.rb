class ChangeDueDateObject < ActiveRecord::Migration
  def down
    remove_column :tasks, :due_date, :string
  end
end
