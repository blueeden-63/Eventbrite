Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Devise routes for User authentication
  devise_for :users, controllers: { registrations: 'users/registrations' }

  #Page d'acceuil
  root 'home_pages#index'

  #Users
  resources :users, only: [:show]

  #Events
  resources :events, only: [:new, :create, :show, :destroy]

  #Attendances
  resources :attendances, only: [:create]

end
