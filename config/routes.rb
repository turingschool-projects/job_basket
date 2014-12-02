Rails.application.routes.draw do

  root 'welcome#index'
  resources :jobs
  resources :comments
  resources :favorite_jobs, only: [:create, :index]

  get '/login'                => redirect('/auth/github'), as: :login
  get '/signout'              => 'sessions#destroy',       as: :signout
  get '/auth/github/callback' => 'sessions#create'
  get '/auth/failure'         => 'sessions#failure'

end
