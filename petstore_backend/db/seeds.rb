# frozen_string_literal = true

password = '12345'
admin_user = User.create(email: 'saad.18@gmail.com', password: password, password_confirmation: password)
shelter_user = User.create(email: 'saad.18+shelter@gmail.com', password: password, password_confirmation: password)
guardian = User.create(email: 'saad.18+guardian@gmail.com', password: password, password_confirmation: password)

admin_account = Account.create(user: admin_user)
shelter_user_account = Account.create(user: shelter_user)
guardian_account = Account.create(user: guardian)

FIRST_NAMES = ['John', 'Dirk', 'Brad', 'Pamela']
LAST_NAMES = ['Pitt', 'Trump', 'Merkel']
STREET_NAMES = ['Rosa Luxemberg Str', 'Potsdamer Str', 'Maybachufer', 'Kottbuser']
CITY = ['Berlin']
COUNTRY = 'germany'
PET_NAMES = ['shiela', 'kali', 'dexter', 'lulu']

shelter = Shelter.create(
  name: 'People for pets',
  address: Address.create(
    street_name: 'Marianen Str',
    number: 20,
    city: 'Berlin',
    pincode: 10876,
    country: 'germany'
  )
)

3.times do
  ShelterUser.create(
    first_name: FIRST_NAMES.sample,
    last_name: LAST_NAMES.sample,
    shelter: shelter,
    account: shelter_user_account
  )
end

10.times do
  Guardian.create(
    first_name: FIRST_NAMES.sample,
    last_name: LAST_NAMES.sample,
    address: Address.create(
      street_name: STREET_NAMES.sample,
      number: rand(50),
      city: CITY.sample,
      pincode: 10785,
      country: COUNTRY
    )
  )
end

20.times do
  Pet.create(
    shelter: shelter,
    name: PET_NAMES.sample,
    species: 'feline',
    gender: 'male',
    date_of_birth: "10/1/2020"
  )
end
