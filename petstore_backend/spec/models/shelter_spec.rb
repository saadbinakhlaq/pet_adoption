require 'rails_helper'

RSpec.describe Shelter, type: :model do
  it { should have_many(:pets).dependent(:destroy) }
  it { should have_many(:shelter_users).dependent(:destroy) }
end
