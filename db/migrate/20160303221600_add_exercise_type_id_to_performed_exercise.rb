class AddExerciseTypeIdToPerformedExercise < ActiveRecord::Migration
  def change
    add_column :performed_exercises, :exercise_type_id, :integer
  end
end
