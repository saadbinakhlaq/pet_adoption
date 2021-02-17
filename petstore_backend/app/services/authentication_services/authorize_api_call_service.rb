module AuthenticationServices
  class AuthorizeApiCallService
    extend LightService::Organizer

    def self.call(token:)
      with(token: token).reduce(
        DecodeAuthHeaderAction,
        GetUserAction
      )
    end
  end
end