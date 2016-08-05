Rails.application.routes.draw do

  resources :articles
  resources :login
  get 'landing/index'
  root 'landing#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
