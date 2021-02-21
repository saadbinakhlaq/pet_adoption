class Shelter < ApplicationRecord
  has_many :shelter_user, dependent: :destroy
  has_many :pets, dependent: :destroy
  has_many_attached :images
end
