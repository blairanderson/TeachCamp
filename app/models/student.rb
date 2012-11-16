class Student < ActiveRecord::Base
  attr_accessible :email, :name, :phone, :school_id, :classroom_ids, :student_ids
  belongs_to :school
  has_many :attendances
  has_and_belongs_to_many :classrooms
  has_one :parent
end
