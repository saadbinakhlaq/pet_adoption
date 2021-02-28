require 'rails_helper'

RSpec.describe Guardian, type: :model do
  it { should have_one(:account).dependent(:destroy) }
  it { should have_one(:address).dependent(:destroy) }
end
