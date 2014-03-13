class User < ActiveRecord::Base
  attr_accessible :username, :first_name, :last_name, :active_user
  has_many :tasks

  validates :first_name, :last_name,  :presence=>true, :length=> { :maximum=> 25 }

end
