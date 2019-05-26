Rails.application.routes.draw do
  devise_for :users
  # devise_for :users, controllers: {omniauth_callbacks: 'users/omniauth_callbacks'}
  root 'products#index'
  resources :products
  resources :profiles
  resources :profile
  resources :sign_out
  resources :cards
  resources :sells
  resources :buys
  resources :identifications
  resources :users, only: [:index]
end
