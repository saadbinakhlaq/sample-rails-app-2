require 'faker'

FactoryBot.define do
  factory :review do
    account { create(:account) }
    business { create(:business) }
    rating { [1, 2, 3, 4, 5].sample }
    comment { Faker::Lorem.sentence(word_count: 10) }
  end
end
