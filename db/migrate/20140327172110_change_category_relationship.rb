class ChangeCategoryRelationship < ActiveRecord::Migration
  def change
    add_column :tasks, :category_id, :integer
    remove_column :tasks, :category
    remove_column :categories, :task_id
  end
end
