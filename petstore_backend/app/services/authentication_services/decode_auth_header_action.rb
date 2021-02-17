module AuthenticationServices
  class DecodeAuthHeaderAction
    extend LightService::Action

    expects :token
    promises :decoded_auth_token

    executed do |context|
      context.decoded_auth_token = JsonWebToken.decode(token: context.token)
    rescue JWT::DecodeError
      context.fail!('Token is missing', error_code: :missing_token)
    end
  end
end
