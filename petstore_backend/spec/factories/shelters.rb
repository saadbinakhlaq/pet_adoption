FactoryBot.define do
  factory :shelter do
    name { Faker::Company.name }
    brand { Faker::Company.name }
    address_line_1 { "MyText" }
  end
end
