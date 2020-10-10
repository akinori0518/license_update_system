Rails.application.routes.draw do
  get 'informations/new'
  root 'users#index'

  devise_for :users
  
end
