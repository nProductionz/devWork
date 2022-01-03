Rails.application.routes.draw do

  devise_for :users
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "requests#index"

  resources :requests

  resources :artists do
    resource :reviews, only: [:new, :create, :destroy]
  end 

  resources :requesters

end
