Rails.application.routes.draw do
  root 'sessions#home'
  get '/exercises/most_popular', to: 'exercises#most_popular'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/auth/:provider/callback', to: 'sessions#omniauth'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  delete '/logout', to: 'sessions#destroy'

  # resources :routines
  resources :exercises
  resources :workouts do 
    resources :routines, shallow: true
  end
  resources :users

  match '*unmatched', to: 'application#route_not_found', via: :all
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
