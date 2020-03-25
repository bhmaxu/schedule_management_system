Rails.application.routes.draw do
  get 'sessions/new'

  root 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users
  resources :agenda_items

  get '/search', to: 'search_results#search'
  post '/search', to: 'search_results#search', as: 'search_results_display'
end
