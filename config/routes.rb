Rails.application.routes.draw do
  resources :sessions, only: %i(new create destroy)
end
