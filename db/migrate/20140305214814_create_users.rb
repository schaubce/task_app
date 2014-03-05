class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.username= :
      t.first_name= :
      t.last_name= :

      t.timestamps
    end
  end
end
