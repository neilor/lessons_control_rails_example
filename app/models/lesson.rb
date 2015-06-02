class Lesson < ActiveRecord::Base
  has_many :lesson_applies
  has_many :students, -> { uniq }, through: :lesson_applies
end
