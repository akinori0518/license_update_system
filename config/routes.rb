Rails.application.routes.draw do
  root 'users#index'

  devise_for :users

  resources :informations, only: [:new, :create, :edit, :update]
  resources :images, only: [:new, :create, :show, :edit, :update]
  resources :addresses, only: [:new, :create, :show, :edit, :update]
  resources :users do
    member do
      post :purchase
      get :confirm
    end
  end
  
  
end
