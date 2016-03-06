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

  20.times do |x|
    PerformedExercise.create(exercise_type_id: exercises.sample,
                            duration: rand(100)+1,
                            calories_burned: rand(50...1000),
                            done_on: "2016-03-#{x+1}"
    )
    PerformedExercise.create(exercise_type_id: exercises.sample,
                            duration: rand(100)+1,
                            calories_burned: rand(50...1000),
                            done_on: "2016-03-#{x+1}"
    )
    Weight.create(number: rand(75...325), weigh_date_on: "2016-03-#{x+1}")
    TakenStep.create(count: rand(1000...10000), done_on: "2016-03-#{x+1}")
    TakenStep.create(count: rand(1000...10000), done_on: "2016-03-#{x+1}")
    ConsumedCalory.create(total: rand(2...3000), consumed_on: "2016-03-#{x+1}")
    ConsumedCalory.create(total: rand(2...3000), consumed_on: "2016-03-#{x+1}")
end
