# == Schema Information
#
# Table name: course_enrollments
#
#  id         :integer         not null, primary key
#  course_id  :integer
#  student_id :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class CourseEnrollment < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :student_id
  belongs_to :course, :class_name => "Course"
  belongs_to :student, :class_name => "Student"
end
