class Student < ActiveRecord::Base
  has_many :lesson_applies
  has_many :lessons,-> { uniq }, through: :lesson_applies
end
