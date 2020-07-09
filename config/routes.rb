Rails.application.routes.draw do
  root to: 'blogs#index'
  resources :blogs
  resources :sessions, only: %i(new create destroy)
  resources :users
end
