Rails.application.routes.draw do

  get 'commissions/new'
  get 'commissions/create'
  get 'commissions/destroy'
  devise_for :users
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "requests#index"

  resources :requests do
    resource :commissions, only: [:new, :create, :destroy]
  end
  

  resources :artists do
    resource :reviews, only: [:new, :create, :destroy]
  end 

  resources :requesters
  
  post '/logout' => 'sessions#destroy'
end
