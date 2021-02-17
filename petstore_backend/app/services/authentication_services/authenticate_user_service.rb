module AuthenticationServices
  class AuthenticateUserService
    extend LightService::Organizer
  
    def self.call(email:, password:)
      with(email: email, password: password).reduce(
        AuthenticationServices::AuthenticateUserAction,
        AuthenticationServices::EncodeUserAction
      )
    end
  end
end
