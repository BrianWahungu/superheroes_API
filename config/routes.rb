Rails.application.routes.draw do
  resources :superheros
  post '/superheros', to: 'superheros#create'
end
