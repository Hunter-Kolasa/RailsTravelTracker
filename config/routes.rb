Rails.application.routes.draw do
  
  get '/auth/facebook/callback' => 'sessions#create' 
  get '/signup' => 'users#new', as: 'signup'
  post '/signup' => 'users#create'
  get '/login' => 'sessions#new', as: 'login'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy', as: 'logout'

  resources :users, only: [:new, :create], path_names: {new: 'signup'}

  resources :users, only: [:show] do
    resources :vacations, only: [:show, :edit, :update, :index]
  end
  

  resources :vacations
  resources :destinations
  
  root 'destinations#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
