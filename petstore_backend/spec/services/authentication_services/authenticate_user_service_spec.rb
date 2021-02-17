require 'rails_helper'

RSpec.describe AuthenticationServices::AuthenticateUserService do
  let(:password) { "123456" }
  let(:email) { "email@xyz.com" }
  let(:user) { FactoryBot.create(:user, password: password, password_confirmation: password, email: email) }

  context 'when user is present' do
    it 'responds with user' do
      action = described_class.call(email: user.email, password: password)

      expect(action.success?).to be_truthy
      expect(action.token).to be
    end
  end

  context 'when user is not present' do
    it 'responds with error message' do
      action = described_class.call(email: email, password: 'password')

      expect(action.success?).to be_falsey
      expect(action.error_code).to eq(:invalid_credentials)
    end
  end
end
