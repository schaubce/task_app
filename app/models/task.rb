class Task < ActiveRecord::Base
  attr_accessible :task_name, :category, :due_date, :complete, :priority
  belongs_to :user

  validates :task_name, :presence=>true, :length=> { :maximum=>140 }
  validates :user_id, :presence=>true

end
