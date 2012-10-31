class Message < ActiveRecord::Base
  attr_accessible :class_id, :message, :student_id, :classroom_id, :lesson_id
  belongs_to :classroom
  belongs_to :lesson
end
