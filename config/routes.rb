Rails.application.routes.draw do

  root 'begin_pages#home'

  get 'begin_pages/home'

  get 'begin_pages/help'

  get 'begin_pages/about'

end
