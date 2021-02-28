FactoryBot.define do
  factory :address do
    addressable { nil }
    street_name { 'Panier Str' }
    number { '19' }
    city { 'Berlin' }
    state {  }
    pincode { 10986 }
    country { 'germany' }
  end
end
