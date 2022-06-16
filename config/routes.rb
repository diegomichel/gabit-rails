Rails.application.routes.draw do
  resources :rewards
  resources :logs
  resources :users
  resources :tasks
  resources :tags
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
