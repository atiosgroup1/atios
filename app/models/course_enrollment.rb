class CourseEnrollment < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :student_id
  belongs_to :course, :class_name => "Course"
  belongs_to :student, :class_name => "Student"
end
