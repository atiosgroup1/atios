class AddExerciseSubmissionPathAndExerciseSubmissionDatetimeToExerciseSubmission < ActiveRecord::Migration
  def change
    add_column :exercise_submissions, :exercise_submission_path, :string
    add_column :exercise_submissions, :exercise_submission_datetime, :datetime
  end
end
