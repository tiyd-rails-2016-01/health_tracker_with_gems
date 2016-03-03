class CreateExercisePerformeds < ActiveRecord::Migration
  def change
    create_table :exercise_performeds do |t|
      t.string :exercise
      t.integer :duration

      t.timestamps null: false
    end
  end
end
