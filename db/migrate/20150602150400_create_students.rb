class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :nickname
      t.integer :age
      t.string :level

      t.timestamps null: false
    end
  end
end
