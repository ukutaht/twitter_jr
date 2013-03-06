FactoryGirl.define do
  factory :user do
    name     "Some One"
    email    "someone@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end