Rails.application.routes.draw do
  # get '/articles', to: 'articles#index'
  resources :articles  # shortcut for creating all the CRUD actions
end
