Rails.application.routes.draw do

  get 'commissions/new'
  get 'commissions/create'
  get 'commissions/destroy'
  devise_for :users
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "requests#index"

  resources :requests do
    resource :commissions, only: [:new, :create, :destroy]
  end
  

  resources :artists do
    resource :reviews, only: [:new, :create, :destroy]
  end
  
  post '/logout' => 'sessions#destroy'

  get 'adm', to: 'admins#index', :as => :admin_view
  get 'adm/ban/:id', to: 'admins#unartist_user', :via => :get, :as => :admin_unartist_user
  get 'adm/unban/:id', to: 'admins#makeartist_user', :via => :get, :as => :admin_makeartist_user
  get 'adm/admin/:id', to: 'admins#admin_user', :via => :get, :as => :admin_admin_user
  get 'adm/unadmin/:id', to: 'admins#unadmin_user', :via => :get, :as => :admin_unadmin_user
end
