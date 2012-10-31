class AddIdsToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :classroom_id, :integer
    add_column :messages, :lesson_id, :integer
  end
end
