class School < ActiveRecord::Base
  attr_accessible :address, :district, :name, :phone, :website
  has_many :students
end
