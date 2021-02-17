# frozen_string_literal: true

module AuthenticationServices
  class AuthenticateUserAction
    extend LightService::Action

    expects :email, :password
    promises :user

    executed do |context|
      user = User.find_by_email context.email

      if user&.authenticate(context.password)
        context.user = user
      else
        context.fail!("User does not exists", error_code: :invalid_credentials)
      end
    end
  end
end
