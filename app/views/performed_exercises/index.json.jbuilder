json.array!(@performed_exercises) do |performed_exercise|
  json.extract! performed_exercise, :id, :exercise, :duration, :calories_burned
  json.url performed_exercise_url(performed_exercise, format: :json)
end
