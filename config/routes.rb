Rails.application.routes.draw do
  root 'users#index'

  devise_for :users

  resources :informations, only: [:new, :create]
  resources :images, only: [:new, :create]
  resources :addresses, only: [:new, :create, :show, :edit, :update]
  
end
