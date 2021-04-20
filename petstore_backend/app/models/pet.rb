class Pet < ApplicationRecord
  enum gender: {female: 'female', male: 'male'}
  belongs_to :shelter
  has_many_attached :images

  validates_presence_of :name, :species, :gender
end
