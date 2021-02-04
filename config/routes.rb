Rails.application.routes.draw do
  resources :users, only: [:show] do
    resources :vacations, only: [:show, :index]
  end
  resources :vacations, only: [:show] do
    resources :destinations, only: [:show, :index]
  end
  resources :vacations, only: [:index, :show, :new, :create, :edit, :update]
  resources :destinations, only: [:index, :show, :new, :create, :edit, :update]
  
  root 'destinations#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
