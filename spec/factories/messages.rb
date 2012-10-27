# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :message do
    class_id 1
    student_id 1
    message "MyText"
  end
end
