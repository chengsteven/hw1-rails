Rails.application.routes.draw do
  get '/about', to: 'static_pages#about'
  get '/user/new', to: 'users#new', as: 'users'


  root 'users#index'
  #Edit above this line
  get '/user/:id', to: 'users#show', as: 'user'
  post '/user/new', to: 'users#create'
end
