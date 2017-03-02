Rails.application.routes.draw do

  resources :articles
  get 'landing/index'
  root 'landing#index'

  get 'carousel/index'

  devise_for :users
  get 'persons/profile'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
