Rails.application.routes.draw do
  scope :api do
    resources :comments
    resources :races
    resources :drones
    resources :users, except: [:create]
    post 'register', to: 'authentications#register'
    post 'login', to: 'authentications#login'

    post 'oauth/github'
    post 'oauth/facebook'
  end
end
