FactoryGirl.define do
  factory :user do
    sequence(:name)  { |n| "User #{n}" }
    sequence(:email) { |n| "test_#{n}@mail.com"}
    password "tester"
    password_confirmation "tester"
	factory :admin do
      admin true
    end
  end
end