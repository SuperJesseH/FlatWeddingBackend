Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :user
      resources :event
      resources :posts
    end
  end
end
