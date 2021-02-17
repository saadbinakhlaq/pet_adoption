# frozen_string_literal: true

class Api::V1::TestController < Api::V1::BaseController
  def index
    render json: { message: 'success' }
  end
end
