class Guardian < ApplicationRecord
  has_one :account, as: :user
  has_one :address, as: :addressable, dependent: :destroy
  has_many_attached :images
end
