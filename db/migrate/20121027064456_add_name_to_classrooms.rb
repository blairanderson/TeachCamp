class AddNameToClassrooms < ActiveRecord::Migration
  def change
    add_column :classrooms, :name, :string
    add_column :classrooms, :description, :text
  end
end
