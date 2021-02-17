require 'rails_helper'

RSpec.describe AuthenticationServices::AuthorizeApiCallService do
  let(:password) { "123456" }
  let(:email) { "email@xyz.com" }
  let(:user) { FactoryBot.create(:user, password: password, password_confirmation: password, email: email) }
  let(:token) do
    AuthenticationServices::EncodeUserAction.execute(user: user).token
  end

  context 'when user is present' do
    it 'responds with user' do
      action = described_class.call(token: token)

      expect(action.success?).to be_truthy
      expect(action.user).to eq(user)
    end
  end

  context 'when user is not present' do
    it 'responds with error message' do
      action = described_class.call(token: 'token')

      expect(action.success?).to be_falsey
      expect(action.error_code).to eq(:missing_token)
    end
  end
end
