Rails.application.routes.draw do
  get 'oauth/github'

scope :api do
  resources :comments
  resources :races
  resources :drones
  resources :users
  post 'register', to: 'authentications#register'
    post 'login', to: 'authentications#login'
  end
end
