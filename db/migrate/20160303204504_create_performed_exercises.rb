class CreatePerformedExercises < ActiveRecord::Migration
  def change
    create_table :performed_exercises do |t|
      t.string :exercise
      t.integer :duration
      t.integer :calories_burned

      t.timestamps null: false
    end
  end
end
