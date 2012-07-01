# == Schema Information
#
# Table name: courses
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  lecturer_id :integer
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

class Course < ActiveRecord::Base
  attr_accessible :lecturer_id, :name
  belongs_to :lecturer
  has_many :exercises
  has_many :students, :through => :course_enrollments
  has_many :course_enrollments

  def enroll! (student)
    course_enrollments.create!(student_id: student.id) unless student.enrolled?(self)
  end
end

