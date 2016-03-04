class AddDoneOnToPerformedExercise < ActiveRecord::Migration
  def change
    add_column :performed_exercises, :done_on, :date
  end
end
