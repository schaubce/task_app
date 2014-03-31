# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_category do
    user nil
    category nil
    name "MyString"
  end
end
