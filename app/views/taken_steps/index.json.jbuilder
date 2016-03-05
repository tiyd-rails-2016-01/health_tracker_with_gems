json.array!(@taken_step) do |step|
  json.extract! taken_stept, :id, :count, :done_on
  json.url taken_step_url(taken_step, format: :json)
end
