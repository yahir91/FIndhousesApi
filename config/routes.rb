Rails.application.routes.draw do
  resources :sessions, only: [:create]
  resources :registration, only: [:create]
  resources :houses, only: [:create, :index, :show]
  resources :favorites, only: [:create, :index, :destroy]
  delete :logout, to: 'sessions#logout'
  get :logged_in, to: 'sessions#logged_in'
  root to: 'static#home'
end
