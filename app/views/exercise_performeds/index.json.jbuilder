json.array!(@exercise_performeds) do |exercise_performed|
  json.extract! exercise_performed, :id, :exercise, :duration
  json.url exercise_performed_url(exercise_performed, format: :json)
end
