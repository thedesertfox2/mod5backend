Rails.application.routes.draw do
  resources :user_dmv_paperworks
  resources :dmv_paperworks
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: :index
      post '/login', to: 'auth#create'
      # get 'users/:id/user_owned_guns', to: 'user_owned_guns#getUserGuns'
      get '/profile', to: 'users#profile'
    end
  end
end
