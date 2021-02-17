require 'rails_helper'

RSpec.describe AuthenticationServices::EncodeUserAction do
  let(:password) { '123456' }
  let(:email) { 'email@xyz.com' }
  let(:user) { FactoryBot.create(:user, password: password, password_confirmation: password, email: email) }

  it 'responds with a token' do
    action = described_class.execute(user: user)

    expect(action.success?).to be_truthy
    expect(action.token).to be
  end
end
