class CreateCattegories < ActiveRecord::Migration

    def change 
       create_table :cattegories do |t|
          t.references :user
          t.references :category
          t.string :name

       end
       add_index :cattegories, :user_id
       add_index :cattegories, :category_id
    end
end
