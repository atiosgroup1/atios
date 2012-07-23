# == Schema Information
#
# Table name: exercise_submissions
#
#  id               :integer         not null, primary key
#  lecturer_grade   :integer
#  lecturer_comment :text
#  student_comment  :text
#  auto_grade       :integer
#  final_grade      :integer
#  created_at       :datetime        not null
#  updated_at       :datetime        not null
#  student_id       :integer
#  exercise_id      :integer
#

class ExerciseSubmission < ActiveRecord::Base
  attr_accessible :exercise_id, :student_id
  attr_accessible :auto_grade, :final_grade, :lecturer_comment, :lecturer_grade, :student_comment, :exercise_submission_path, :exercise_submission_datetime

  belongs_to :student, :class_name => "Student"
  belongs_to :exercise, :class_name => "Exercise"
end
