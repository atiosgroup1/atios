require 'spec_helper'

describe ExerciseSubmission do
  pending "add some examples to (or delete) #{__FILE__}"
end
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

