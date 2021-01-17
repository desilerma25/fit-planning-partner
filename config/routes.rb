Rails.application.routes.draw do
  root 'sessions#home'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/users/new', to: 'users#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :routines
  resources :exercises
  resources :workouts
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
