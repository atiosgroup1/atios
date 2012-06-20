class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :title
      t.text :description
      t.string :exercise_path
      t.string :script_path
      t.datetime :due_date

      t.timestamps
    end
  end
end
