class Task < ActiveRecord::Base
  attr_accessible :task_name, :category_id, :due_date, :complete, :priority, :description
  belongs_to :user
  has_many :subtask
  has_one :category

  validates :task_name, :presence=>true, :length=> { :maximum=>140 }
  validates :user_id, :presence=>true
  # validates :category, :presence=>true # if there "isn't a category", it'll be none as default
  #category, due date is optional  

  # CATEGORY = [['None',1],['Class', 2],['Work', 3]]
  #  CATEGORY = Hash['None' => 1,'Class' => 2, 'Work' => 3]
  # can make a new array of keys by CATEGORY.keys, .values (values)
  # don't use .shift  --removes stuff randomy

  PRIORITY = Hash['High'=>1, 'Medium' => 2, 'Low' => 3]
end
