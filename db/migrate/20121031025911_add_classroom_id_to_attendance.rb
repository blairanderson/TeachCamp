class AddClassroomIdToAttendance < ActiveRecord::Migration
  def change
    add_column :attendances, :classroom_id, :integer
  end
end
