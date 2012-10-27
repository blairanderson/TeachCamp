class Parent < ActiveRecord::Base
  attr_accessible :address, :email, :name, :phone, :student_id
  belongs_to :student #wasn't sure if this should be has_one instead of belongs_to
end
