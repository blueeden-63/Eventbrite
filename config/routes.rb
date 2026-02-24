Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Devise routes for User authentication
  devise_for :users, controllers: { 
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

  #Page d'acceuil
  root 'events#index'

  #Users - only accept numeric IDs to avoid conflicts with Devise routes
  resources :users, only: [:show], constraints: { id: /\d+/ }

  #Events
  resources :events, only: [:new, :create, :show, :destroy]

  #Attendances
  resources :attendances, only: [:create]

end
