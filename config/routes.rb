Rails.application.routes.draw do
  get 'scan/new'
  devise_for :users
  resources :books
  #get 'home/index'
  get 'home/all'
  #root 'home#index'
  root 'books#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
