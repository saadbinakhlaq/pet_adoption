require 'rails_helper'

RSpec.describe AuthenticationServices::DecodeAuthHeaderAction do
  let(:token) do
    'eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE2MTM2ODQwNDV9.b7BmeyukyYMQgiiZu7boWs1LQU3TXKdRCqv8SHWxv7c'
  end

  context 'when valid jwt is given' do
    it 'decodes the token' do
      action = described_class.execute(token: token)

      expect(action.success?).to be_truthy
      expect(action.decoded_auth_token[:user_id]).to eq(1)
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
