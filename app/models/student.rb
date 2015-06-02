class Student < ActiveRecord::Base
  has_many :lesson_applies
  has_many :lessons, through: :lesson_applies
end
