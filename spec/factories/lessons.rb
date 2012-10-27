# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :lesson do
    class_id 1
    name "MyString"
    description "MyText"
    date "2012-10-27 01:20:10"
  end
end
