class Student < User
  has_many :course_enrollments
  has_many :courses, :through => :course_enrollments

  def enrolled? (course)
    course_enrollments.find_by_course_id(course.id)
  end
end