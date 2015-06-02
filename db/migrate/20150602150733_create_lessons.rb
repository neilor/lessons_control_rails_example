class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :title
      t.integer :number
      t.text :description
      t.decimal :value

      t.timestamps null: false
    end
  end
end
