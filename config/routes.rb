Rails.application.routes.draw do
  namespace :api, default: {format: :json} do
    resources :meals, only: [:index, :create]
    resources :groups, only: [:index, :create]
  end
end
