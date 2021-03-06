FactoryBot.define do
  factory :address do
    address_line_1 { "MyString" }
    city { "MyString" }
    zipcode { "MyString" }
    country { "MyString" }
    association :addressable, factory: :business
  end
end
