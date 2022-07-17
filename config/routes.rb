Rails.application.routes.draw do
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
