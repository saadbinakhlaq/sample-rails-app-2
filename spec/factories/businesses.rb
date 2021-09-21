FactoryBot.define do
  factory :business do
    name { "fake-business-#{SecureRandom.uuid.slice(0, 5)}"}
  end
end
