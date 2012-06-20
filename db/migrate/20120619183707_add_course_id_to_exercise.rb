class AddCourseIdToExercise < ActiveRecord::Migration
  def change
    add_column :exercises, :course_id, :integer
  end
end
