Rails.application.routes.draw do
  get 'home/home_index'
  get 'home/map'
  resources :tests
  devise_for :users
  root to: 'home#home_index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end