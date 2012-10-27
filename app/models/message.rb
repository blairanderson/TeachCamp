class Message < ActiveRecord::Base
  attr_accessible :class_id, :message, :student_id
  belongs_to :classroom
end
