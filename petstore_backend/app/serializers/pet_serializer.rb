class PetSerializer < ApplicationSerializer
  attributes :id, :name, :species, :gender, :color, :date_of_birth, :images

  def images
    object.images.map do |image|
      url_for(image)
    end
  end
end
