FactoryGirl.define do
  sequence(:email) { |n| "user#{n}@example.com" }
  
  factory :user do
    email
    password "9999999999"
    first_name "David"
    last_name "Davidson"
    admin false
  end

  factory :user2, class: User do
    email
    password "7777777777"
    first_name "Marky"
    last_name "Mark"
    admin false
  end

  factory :admin, class: User do
    email
    password "hunter2"
    admin true
    first_name "Mike"
    last_name "Adminson"
  end
end
