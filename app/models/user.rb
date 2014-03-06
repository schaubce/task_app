class User < ActiveRecord::Base
  attr_accessible :username, :first_name, :last_name
  has_many :tasks

end
