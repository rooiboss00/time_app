Rails.application.routes.draw do

  root 'begin_pages#home'

  get '/help', to: 'begin_pages#help'

  get '/about', to: 'begin_pages#about'

  get  '/contact', to: 'begin_pages#contact'

  get '/signup', to: 'users#new'

  #post '/signup', to: 'users#create'

  get '/login', to: 'sessions#new'

  post '/login', to:'sessions#create'

  delete '/logout', to: 'sessions#destroy'

  resources :posts, only: [:create, :destroy]

  resources :users

  resources :posts
end
