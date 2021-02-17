require 'rails_helper'

RSpec.describe Api::V1::AuthenticationController, type: :controller do
  let(:password) { '123456' }
  let(:email) { 'email@xyz.com' }
  let(:user) { FactoryBot.create(:user, password: password, password_confirmation: password, email: email) }

  context 'password is correct' do
    let(:params) do
      {
        email: user.email,
        password: password
      }
    end

    it 'responds with a token' do
      post :authenticate, params: params

      expect(response).to have_http_status(:created)
    end
  end

  context 'password is wrong' do
    let(:params) do
      {
        email: user.email,
        password: 'password'
      }
    end

    it 'responds with error' do
      post :authenticate, params: params

      expect(response).to have_http_status(:unauthorized)
      expect(JSON.parse(response.body)).to eq(
        [{'error_code' => 'invalid_credentials', 'message' => 'User does not exists'}]
      )
    end
  end
end
