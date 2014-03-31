class UserCategory < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  attr_accessible :name, :user_id, :category_id
end
