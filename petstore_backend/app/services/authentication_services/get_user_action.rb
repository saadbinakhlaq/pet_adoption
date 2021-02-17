# frozen_string_literal: true

module AuthenticationServices
  class GetUserAction
    extend LightService::Action

    expects :decoded_auth_token
    promises :user

    executed do |context|
      user = User.find_by(id: context.decoded_auth_token[:user_id])
      if user.present?
        context.user = user
      else
        context.fail!('Invalid token', error_code: :invalid_token)
      end
    end
  end
end
