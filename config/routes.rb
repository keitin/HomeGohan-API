Rails.application.routes.draw do
  namespace :api, default: {format: :json} do
    resources :users, only: [:index, :create]
    resources :meals, only: [:index, :create]
    resources :groups, only: [:index, :create]
    resources :comments, only: [:index, :create]
  end
end
