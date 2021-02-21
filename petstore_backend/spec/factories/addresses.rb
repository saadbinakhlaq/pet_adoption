FactoryBot.define do
  factory :address do
    addressable { nil }
    street_name { Faker::Address.street_name }
    number { Faker::Address.building_number }
    city { Faker::Address.city }
    state { Faker::Address.state }
    pincode { Faker::Address.zip_code }
    country { Faker::Address.country }
  end
end
