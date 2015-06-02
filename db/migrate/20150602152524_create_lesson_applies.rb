class CreateLessonApplies < ActiveRecord::Migration
  def change
    create_table :lesson_applies do |t|
      t.references :student, index: true, foreign_key: true
      t.references :lesson, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
