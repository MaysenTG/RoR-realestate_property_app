Rails.application.routes.draw do
  get 'public/index'
  get 'public/latest'
  get 'public/featured'
  get 'public/sale'
  get 'dashboard' => 'dashboard#index', as: :dashboard
  get 'dashboard/properties'
  get 'dashboard/reports'
  devise_for :agents
  get 'public/index'
  resources :properties
  
  get 'latest-properties' => 'public#latest'
  get 'featured-properties' => 'public#featured'
  get 'sale-properties' => 'public#sale'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  root 'public#index'
  
end
