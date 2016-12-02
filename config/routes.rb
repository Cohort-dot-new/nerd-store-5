Rails.application.routes.draw do
  get '/' => 'products#index'
  get '/products' => 'products#index'
  get '/products/new' => 'products#new'
  post '/products' => 'products#create'
  get '/products/:id' => 'products#show'
  get '/products/:id/edit' => 'products#edit'
  patch '/products/:id' => 'products#update'
  delete '/products/:id' => 'products#delete'
  post '/search' => 'products#search'

  post '/orders' => 'orders#create'
  get '/orders/:id' => 'orders#show'

  post '/carted_products' => 'carted_products#create'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
end
