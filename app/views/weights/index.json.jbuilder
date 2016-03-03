json.array!(@weights) do |weight|
  json.extract! weight, :id, :number, :weigh_date_on
  json.url weight_url(weight, format: :json)
end
