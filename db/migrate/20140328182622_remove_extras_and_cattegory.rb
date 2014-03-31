class RemoveExtrasAndCattegory < ActiveRecord::Migration
  def change
    remove_column :categories, :user_id
    remove_column :user_categories, :name
    drop_table :cattegories
  end
end
