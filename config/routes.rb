Rails.application.routes.draw do
  mount Raddocs::App => "/docs"
  resources :sessions, only: [:create]
  resources :registration, only: [:create]
  resources :houses, only: [:create, :index, :show]
  resources :favorites, only: [:create, :index, :destroy]
  delete :logout, to: 'sessions#logout'
  get :logged_in, to: 'sessions#logged_in'
  root to: 'static#home'
  api_guard_routes for: 'users', controller: {
    registration: 'users/registration',
    authentication: 'users/authentication',
    passwords: 'users/passwords',
    tokens: 'users/tokens'
  }
end
