Rails.application.routes.draw do
  resources :bookshelves
  resources :reviews
  resources :books
  resources :authors
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
