# frozen_string_literal: true

class Api::V1::AuthenticationController < Api::V1::BaseController
  skip_before_action :authenticate_request

  def authenticate
    command = AuthenticationServices::AuthenticateUserService.call(
      email: params[:email], password: params[:password]
    )

    if command.success?
      render json: { token: command.token }, status: :created
    else
      render json: [{ error_code: command.error_code, message: command.message }], status: :unauthorized
    end
  end
end
