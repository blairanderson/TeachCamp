class FixClassid < ActiveRecord::Migration
  def change
    rename_column :attendances, :class_id, :classroom_id
  end
end
