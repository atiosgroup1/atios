# == Schema Information
#
# Table name: exercises
#
#  id            :integer         not null, primary key
#  title         :string(255)
#  description   :text
#  exercise_path :string(255)
#  script_path   :string(255)
#  due_date      :datetime
#  created_at    :datetime        not null
#  updated_at    :datetime        not null
#  course_id     :integer
#

class Exercise < ActiveRecord::Base
  attr_accessible :description, :due_date, :exercise_path, :script_path, :title, :course_id
  belongs_to :course

  has_many :exercise_submissions
  has_many :students, through: :exercise_submissions
end
