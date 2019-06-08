Rails.application.routes.draw do
  devise_for :users
  # devise_for :users, controllers: {omniauth_callbacks: 'users/omniauth_callbacks'}
  root 'products#index'
  resources :products do
    resources :evaluations
    resources :buys
    collection do
      post 'pay/:id' => 'products#pay', as: 'pay'
    end
  end
  resources :profiles
  resources :profile
  resources :sign_out
  resources :cards
  resources :sells
  resources :identifications
  resources :users, only: [:index]
end
