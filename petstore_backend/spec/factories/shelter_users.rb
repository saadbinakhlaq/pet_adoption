FactoryBot.define do
  factory :shelter_user do
    first_name { 'Moni' }
    last_name { 'Zuckerberg' }
    address_line_1 { '' }
    shelter { nil }
  end
end
