class Api::V1::PetsController < Api::V1::BaseController
  skip_before_action :authenticate_request

  def show
    json_response Pet.find(params[:id])
  end

  def index
    json_response Pet.all.with_attached_images
  end

  def create
  end

  def images
    pet = Pet.find(1)

    if image_params[:image].present?
      pet.images.attach(image_params[:image])
    end

    head :accepted
  end

  private

  def image_params
    params.require(:pet).permit(:image)
  end
end
