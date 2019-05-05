# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    sequence(:login) { |n| "vsantos #{n}" }
    sequence(:name) { |n| "Vicente Santos #{n}" }
    sequence(:url) { 'http://example.com' }
    sequence(:avatar_url) { 'http://example.com/avatar' }
    sequence(:provider) { 'github' }
  end
end
