FactoryBot.define do
  factory :user do
    email { "email-#{SecureRandom.uuid}@example.com" }
    password { "password" }
  end
end
