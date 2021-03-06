Rails.application.routes.draw do
  
  root 'home#index'
  
  resources :gossips
  resources :cities
  resources :users
  resources :sessions, only: [:new, :create, :destroy]


  resources :comments
  
  resources :gossips do
    resources :comments
  end


  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  #For authorized users
  #get 'authorized', to: 'sessions#page_requires_login'
  
  
end
