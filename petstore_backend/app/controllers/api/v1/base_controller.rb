class Api::V1::BaseController < ApplicationController
  before_action :authenticate_request
  attr_reader :current_user

  private

  def authenticate_request
    command = AuthenticationServices::AuthorizeApiCallService.call(token: token)

    if command.success?
      @currnt_user = command.user
    else
      render json: [{error_code: command.error_code, message: command.message }], status: :unauthorized
    end
  end

  def token
    ActionController::HttpAuthentication::Token
      .token_and_options(request)&.first
  end
end