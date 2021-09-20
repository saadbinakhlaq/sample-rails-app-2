FactoryBot.define do
  factory :admin_user do
    email { "admin-#{SecureRandom.uuid}@example.com" }
    password { SecureRandom.uuid.to_s }
  end
end
