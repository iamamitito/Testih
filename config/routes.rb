Rails.application.routes.draw do
  get 'centres/index'
  get 'home/home_index'
  get 'home/map'
  resources :tests
  devise_for :users, controllers: { 
    omniauth_callbacks: 'users/omniauth_callbacks'
  }
  
  root to: 'home#home_index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
