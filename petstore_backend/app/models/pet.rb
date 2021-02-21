class Pet < ApplicationRecord
  belongs_to :shelter
  has_many_attached :images
end
