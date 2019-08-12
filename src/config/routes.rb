Rails.application.routes.draw do
  root 'home#index'

  devise_for :users

  # post method call_approve member for jobs to get the path.
  resources :jobs do
    member do
      post :call_approve
    end
  end

  resources :bids
  resources :reviews
  resources :profiles
  # /hello there
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
