class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.integer :student_id
      t.integer :class_id
      t.boolean :present
      t.boolean :tardy
      t.boolean :excused

      t.timestamps
    end
  end
end
