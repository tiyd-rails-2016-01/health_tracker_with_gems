# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


  ExerciseType.create(name: "Run")
  ExerciseType.create(name: "Bike Ride")
  ExerciseType.create(name: "Trail Hike")
  ExerciseType.create(name: "Mountain Climbing")
  ExerciseType.create(name: "Skiing")
  ExerciseType.create(name: "P90X: Core Synergistics")
  ExerciseType.create(name: "Dog Walk")

  exercises = ExerciseType.pluck(:id)
  e_dates = ["2016-03-01", "2016-02-29", "2016-03-02", "2016-02-27"]

  1..15.times do
    PerformedExercise.create(exercise_type_id: exercises.sample,
                              duration: rand(100)+1,
                              calories_burned: rand(50...1000),
                              done_on: e_dates.sample
    )
  end

  w_dates = ["2016-03-01", "2016-02-29", "2016-03-02", "2016-02-27"]
  20.times do
  Weight.create(number: rand(75...325), weigh_date_on: w_dates.sample)
  end
