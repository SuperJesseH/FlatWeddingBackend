Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index]
      resources :events, only: [:index]
      resources :posts, only: [:index]
    end
  end
end
