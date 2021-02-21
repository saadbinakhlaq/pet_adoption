FactoryBot.define do
  factory :shelter_user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    address_line_1 { "MyText" }
    shelter { nil }
  end
end
