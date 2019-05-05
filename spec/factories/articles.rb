# frozen_string_literal: true

FactoryBot.define do
  factory :article do
    sequence(:title) { |n| "My awesome article #{n}" }
    sequence(:content) { |n| "My not so awesome content #{n}" }
    sequence(:slug) { |n| "my-awesome-article-#{n}" }
  end
end
