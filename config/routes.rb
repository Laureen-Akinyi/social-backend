Rails.application.routes.draw do
  resources :followers
  resources :posts
  # resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get "posts", to: 'posts#index'
  get "posts/:id", to: 'posts#show'

  # root "articles#index"
  resources :users, only: [:index, :show, :create]

  #Authentication routes
  post '/register', to: "users#create_user"

  post '/login', to: "users#login_user"

  # get '/me', to: "users#login_user"

  delete '/logout', to: "users#logout_user"
end
