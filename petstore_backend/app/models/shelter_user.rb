class ShelterUser < ApplicationRecord
  belongs_to :shelter
  has_one :account, as: :user
  has_one_attached :image
end
