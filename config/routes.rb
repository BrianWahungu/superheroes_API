Rails.application.routes.draw do
  resources :powers
  resources :hero_powers
  resources :superheros
  post '/superheros', to: 'superheros#create'

  resources :heroes, only: [:index, :show]
  resources :powers, only: [:index, :show, :update]
  resources :hero_powers, only: [:create]

  # Handle not found routes
  get '*unmatched_route', to: 'application#not_found'

  get '/heroes', to: 'heroes#index'
  get '/heroes/:id', to: 'heroes#show'
  get '/powers/:id', to: 'powers#show'
  patch '/powers/:id', to: 'powers#update'
  post '/hero_powers', to: 'hero_powers#create'


end
