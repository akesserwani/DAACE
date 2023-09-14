Rails.application.routes.draw do
  devise_for :users
  #route for new query
  get '/new', to: 'main#new', as: :new
  #creating new query
  post '/new/create', to: 'main#create', as: :data_mains
  #viewing data on index
  get '/view/:id', to: 'main#view', as: :view
  #update the form -> only as admin
  patch '/view/:id/edit', to: 'main#update'
  #delete the post
  delete '/view/:id/edit', to: 'main#destroy'
  #edit post -> only as admin 
  get '/view/:id/edit', to: 'main#edit', as: :data_main

  # Defines the root path route ("/")
  root "main#index", as: :index

end
