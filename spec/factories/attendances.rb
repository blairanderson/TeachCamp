# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :attendance do
    student_id 1
    class_id 1
    present false
    tardy false
    excused false
  end
end
