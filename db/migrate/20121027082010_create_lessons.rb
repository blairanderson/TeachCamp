class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.integer :class_id
      t.string :name
      t.text :description
      t.datetime :date

      t.timestamps
    end
  end
end
