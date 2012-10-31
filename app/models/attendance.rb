class Attendance < ActiveRecord::Base
  attr_accessible :class_id, :excused, :present, :student_id, :tardy
  belongs_to :classroom
  belongs_to :students
end
