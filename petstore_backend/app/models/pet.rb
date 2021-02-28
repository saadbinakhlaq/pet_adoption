class Pet < ApplicationRecord
  enum gender: {female: 0, male: 1}
  belongs_to :shelter
  has_many_attached :images

  validates_presence_of :name, :species, :gender
end
