class Classroom < ActiveRecord::Base
  attr_accessible :running_date, :teacher_ids, :name, :description
  has_and_belongs_to_many :teachers
  has_and_belongs_to_many :students
  has_many :parents
  has_many :messages
  has_many :attendances
  has_many :lessons
end
