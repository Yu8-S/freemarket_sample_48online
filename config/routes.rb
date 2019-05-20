Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :products
  resources :profiles
  resources :profile
  resources :users, only: [:index]
end
