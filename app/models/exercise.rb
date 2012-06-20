class Exercise < ActiveRecord::Base
  attr_accessible :description, :due_date, :exercise_path, :script_path, :title, :course_id
  belongs_to :course
end
