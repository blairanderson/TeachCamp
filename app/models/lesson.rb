 class Lesson < ActiveRecord::Base
  attr_accessible :class_id, :date, :description, :name
  belongs_to :classroom
  has_many :messages
end
