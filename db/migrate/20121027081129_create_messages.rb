class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :class_id
      t.integer :student_id
      t.text :message

      t.timestamps
    end
  end
end
