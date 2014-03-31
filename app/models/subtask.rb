class Subtask < ActiveRecord::Base
  attr_accessible :name, :complete
  belongs_to :task

end
