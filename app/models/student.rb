# == Schema Information
#
# Table name: users
#
#  id              :integer         not null, primary key
#  user_name       :string(255)
#  email           :string(255)
#  type            :string(255)
#  created_at      :datetime        not null
#  updated_at      :datetime        not null
#  password_digest :string(255)
#

class Student < User

  has_many :course_enrollments
  has_many :courses, :through => :course_enrollments

  has_many :exercise_submissions
  has_many :exercises, :through => :exercise_submissions

  def enrolled? (course)
    course_enrollments.find_by_course_id(course.id)
  end

  def submit!(exercise, arguments = {})
    args = {student_id: :id, exercise_id: exercise.id }
    args.merge! arguments unless arguments.empty?
    args[:exercise_submission_datetime]=DateTime.now
    exercise_submissions.create!(args)
  end
end
