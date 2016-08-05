Rails.application.routes.draw do


  resources :articles
  resources :login
  get 'landing/index'
  root 'landing#index'

  devise_for :users
  get 'persons/profile'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
