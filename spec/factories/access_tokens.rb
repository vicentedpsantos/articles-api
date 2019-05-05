FactoryBot.define do
  factory :access_token do
    token { "MyString" }
    association :user
  end
end
