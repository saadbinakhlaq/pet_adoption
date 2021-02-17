module AuthenticationServices
  class EncodeUserAction
    extend LightService::Action
    
    expects :user
    promises :token
  
    executed do |context|
      context.token = ::JsonWebToken.encode(payload: { user_id: context.user.id })
    end
  end
end
