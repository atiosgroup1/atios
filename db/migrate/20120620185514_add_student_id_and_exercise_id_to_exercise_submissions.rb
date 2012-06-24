class AddStudentIdAndExerciseIdToExerciseSubmissions < ActiveRecord::Migration
  def change
    add_column :exercise_submissions, :student_id, :integer
    add_column :exercise_submissions, :exercise_id, :integer
  end
end
