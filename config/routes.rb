Rails.application.routes.draw do
  resources :powers
  resources :hero_powers
  resources :superheros
  post '/superheros', to: 'superheros#create'
end
