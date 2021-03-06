Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show, :create]
      resources :events, only: [:index]
      resources :posts, only: [:index, :create]
      resources :sessions, only: [:create]
    end
  end
end
