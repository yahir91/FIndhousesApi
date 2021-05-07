Rails.application.routes.draw do
  mount Raddocs::App => "/docs"
  resources :houses, only: [:create, :index, :show]
  resources :favorites, only: [:create, :index, :destroy, :show]
  api_guard_routes for: 'users', controller: {
    registration: 'users/registration',
    authentication: 'users/authentication',
    passwords: 'users/passwords',
    tokens: 'users/tokens'
  }
end
