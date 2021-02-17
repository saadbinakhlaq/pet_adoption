require 'rails_helper'

RSpec.describe AuthenticationServices::AuthenticateUserAction do
  let(:password) { "123456" }
  let(:email) { "email@xyz.com" }
  let(:user) { FactoryBot.create(:user, password: password, password_confirmation: password, email: email) }

  context 'password is correct' do
    it 'responds with user' do
      action = described_class.execute(email: user.email, password: password)

      expect(action.success?).to be_truthy
      expect(action.user).to eq(user)
    end
  end

  context 'password is wrong' do
    it 'responds with error' do
      action = described_class.execute(email: user.email, password: 'wrong')

      expect(action.success?).to be_falsey
      expect(action.error_code).to eq(:invalid_credentials)
    end
  end
end
