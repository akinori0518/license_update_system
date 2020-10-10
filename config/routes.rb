Rails.application.routes.draw do
  get 'images/new'
  root 'users#index'

  devise_for :users

  resources :informations, only: [:new, :create]
  resources :images, only: [:new, :create]
  
end
