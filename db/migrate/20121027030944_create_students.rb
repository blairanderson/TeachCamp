class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :school_id
      t.string :name
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
