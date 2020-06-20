Rails.application.routes.draw do

  root 'begin_pages#home'

  get '/help', to: 'begin_pages#help'

  get '/about', to: 'begin_pages#about'

  get  '/contact', to: 'begin_pages#contact'

  get '/signup', to: 'users#new'
end
