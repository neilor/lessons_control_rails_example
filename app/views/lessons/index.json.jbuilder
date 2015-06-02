json.array!(@lessons) do |lesson|
  json.extract! lesson, :id, :title, :number, :description, :value
  json.url lesson_url(lesson, format: :json)
end
