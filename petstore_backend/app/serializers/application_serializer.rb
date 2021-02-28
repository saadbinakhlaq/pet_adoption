class ApplicationSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  private

  def default_url_options
    Rails.application.routes.default_url_options = { :host => 'localhost:8080' }
  end
end