FactoryBot.define do
  factory :shelter_user do
    first_name { "MyText" }
    last_name { "MyText" }
    address_line_1 { "MyText" }
    shelter { nil }
  end
end
