class User < ActiveRecord::Base
  attr_accessible :username, :first_name, :last_name, :active_user
  has_many :tasks
  has_many :user_categories
  has_many :categories, :through => :user_categories
  after_save { validates_presence_of :first_name, :last_name }
 # validates :first_name, :last_name,  :presence=>true, :length=> { :maximum=> 25 }, :unless=>User.new() {|r| r.user}
end
