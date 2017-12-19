Rails.application.routes.draw do
  root 'static_pages#home'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  mount Apple::App::Site::Association, at: '/'
end
