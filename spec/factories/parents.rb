# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :parent do
    student_id 1
    name "MyString"
    phone "MyString"
    email "MyString"
    address "MyString"
  end
end
