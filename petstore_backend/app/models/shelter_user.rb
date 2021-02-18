class ShelterUser < ApplicationRecord
  belongs_to :shelter
  has_one :account, as: :user
end
