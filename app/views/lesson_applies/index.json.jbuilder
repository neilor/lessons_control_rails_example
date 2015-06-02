json.array!(@lesson_applies) do |lesson_apply|
  json.extract! lesson_apply, :id, :student_id, :lesson_id
  json.url lesson_apply_url(lesson_apply, format: :json)
end
