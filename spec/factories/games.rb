# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :game do
    start_date "2014-07-18 23:01:26"
    end_date "2014-07-18 23:01:26"
    name "MyString"
    description "MyText"
    user_id 1
  end
end
