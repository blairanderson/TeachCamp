class Attendance < ActiveRecord::Base
  attr_accessible :classroom_id, :excused, :present, :student_id, :tardy
  belongs_to :classroom
  belongs_to :student


  scope :last_week, lambda { where(updated_at: Time.now-1.week..Time.now) }
  scope :last_month, lambda { where(updated_at: (Time.now-1.month).beginning_of_month..Time.now.beginning_of_month) }
  scope :month_to_date, lambda { where(updated_at: Time.now.beginning_of_month..Time.now) }
  scope :today, lambda { where(updated_at: (Time.now.to_date).to_time...Time.now) }

end

