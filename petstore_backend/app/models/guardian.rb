class Guardian < ApplicationRecord
  has_one :account, as: :user
end
