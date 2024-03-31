Rails.application.routes.draw do
  devise_for :users
  resources :prototypes, only: [:new, :create, :show, :edit, :update, :destroy] do
    resources :comments, only: [:create, :content]
  end
  resources :users, only: [:show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
root to: "prototypes#index"
  # Defines the root path route ("/")
  # root "articles#index"
end