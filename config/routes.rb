Rails.application.routes.draw do
  resources :choices
  resources :corrects
  resources :questions
  resources :user_dmv_paperworks 
  resources :dmv_paperworks
  
  # resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      get '/users', to: 'users#index'
      get '/users/:id/paperworks', to: 'users#getpaperworks'
      post '/login', to: 'auth#create'
      # get 'users/:id/user_owned_guns', to: 'user_owned_guns#getUserGuns'
      get '/token', to: 'auth#token_log_in'
    end
  end
end
