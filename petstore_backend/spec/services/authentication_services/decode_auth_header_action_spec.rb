require 'rails_helper'

RSpec.describe AuthenticationServices::DecodeAuthHeaderAction do
  let(:password) { '123456' }
  let(:email) { 'email@xyz.com' }
  let(:user) { FactoryBot.create(:user, password: password, password_confirmation: password, email: email) }
  let(:token) do
    AuthenticationServices::EncodeUserAction.execute(user: user).token
  end

  context 'when valid jwt is given' do
    it 'decodes the token' do
      action = described_class.execute(token: token)

      expect(action.success?).to be_truthy
      expect(action.decoded_auth_token[:user_id]).to eq(user.id)
    end
  end

  context 'when invalid jwt is given' do
    it 'reponds with error message' do
      action = described_class.execute(token: 'token')

      expect(action.success?).to be_falsey
      expect(action.error_code).to eq(:missing_token)
    end
  end
end
