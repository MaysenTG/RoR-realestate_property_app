Rails.application.routes.draw do
  devise_for :agents
  get 'public/index'
  resources :properties
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  root 'public#index'
end
