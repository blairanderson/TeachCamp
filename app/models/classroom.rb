class Classroom < ActiveRecord::Base
  attr_accessible :running_date, :teacher_id, :name, :description
  has_and_belongs_to_many :teachers
  has_many :messages
  has_many :attendances
  has_many :lessons
end
