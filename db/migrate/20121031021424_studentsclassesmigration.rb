class Studentsclassesmigration < ActiveRecord::Migration
  def change
    create_table :classrooms_students, :id => false do |t|
      t.integer :classroom_id
      t.integer :student_id
    end
  end
end