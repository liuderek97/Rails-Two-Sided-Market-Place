Rails.application.routes.draw do
<<<<<<< HEAD
  resources :bids
  resources :jobs
=======
  root 'home#index'
>>>>>>> 774a8eab661fa3544eea51c171590f3cff17024c
  resources :reviews
  resources :profiles
  devise_for :users
  # /hello there
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
