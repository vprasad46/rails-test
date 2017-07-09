Rails.application.routes.draw do
  
  resources :users
  root 'static_pages#home'

  get 'users/new'
  get  '/help',    to: 'static_pages#help' 
  get  '/about',   to: 'static_pages#about'
  get  '/signup',  to: 'users#new'
  		
end