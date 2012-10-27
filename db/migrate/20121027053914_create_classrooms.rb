class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.integer :teacher_id
      t.datetime :running_date

      t.timestamps
    end
  end
end
