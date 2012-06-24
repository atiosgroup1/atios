class CreateExerciseSubmissions < ActiveRecord::Migration
  def change
    create_table :exercise_submissions do |t|
      t.integer :lecturer_grade
      t.text :lecturer_comment
      t.text :student_comment
      t.integer :auto_grade
      t.integer :final_grade

      t.timestamps
    end
  end
end
