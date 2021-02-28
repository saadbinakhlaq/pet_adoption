Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      post :authenticate, to: 'authentication#authenticate'
      get :test, to: 'test#index'

      resources :shelters, only: [:index, :show] do
        resources :pets do
          post :images, on: :member
        end
      end

      resources :pets, only: [:index, :show] do
        resources :adoption_requests, only: :create
      end
    end
  end
end
