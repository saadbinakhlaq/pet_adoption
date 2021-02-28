module ExceptionHandler
  extend ActiveSupport::Concern

  included do
    rescue_from ActiveRecord::RecordNotFound do
      json_response([{ error_code: :not_found, message: 'Not Found' }], :not_found)
    end
  end
end
