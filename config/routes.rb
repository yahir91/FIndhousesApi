Rails.application.routes.draw do
  resources :sessions, only: [:create]
  resources :registration, only: [:create]
  delete :logout, to: 'sessions#logout'
  get :logged_in, to: 'sessions#logged_in'
  root to: 'static#home'
end
