class CreateParents < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.integer :student_id
      t.string :name
      t.string :phone
      t.string :email
      t.string :address

      t.timestamps
    end
  end
end
