class Api::V1::SheltersController < Api::V1::BaseController
  skip_before_action :authenticate_request

  def show
    json_response Shelter.find(params[:id])
  end

  def index
    render json: Shelter.all
  end
end
