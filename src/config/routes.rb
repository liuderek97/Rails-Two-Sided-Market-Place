Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'
  resources :reviews
  resources :profiles
  devise_for :users
  # /hello there
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
