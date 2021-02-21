FactoryBot.define do
  factory :pet do
    shelter { nil }
    name { "MyString" }
    species { "MyString" }
    gender { "MyString" }
    color { "MyString" }
    additional_properties { "MyString" }
    date_of_birth { "2021-02-20 11:25:39" }
  end
end
