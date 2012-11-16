class Attendance < ActiveRecord::Base
  attr_accessible :classroom_id, :excused, :present, :student_id, :tardy
  belongs_to :classroom
  belongs_to :student

  scope :today, lambda { where(updated_at: (Time.now.to_date).to_time...Time.now) }

end

