Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :products
  resources :profiles
  resources :profile
  resources :sign_out
  resources :cards
  resources :identifications
  resources :users, only: [:index]
end
