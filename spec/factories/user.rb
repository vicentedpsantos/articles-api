# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    sequence(:login) { |n| "vsantos#{n}" }
    name { 'Vicente Santos' }
    url { 'http://example.com' }
    avatar_url { 'http://example.com/avatar' }
    provider { 'github' }
  end
end
