json.array!(@students) do |student|
  json.extract! student, :id, :name, :nickname, :age, :level
  json.url student_url(student, format: :json)
end
