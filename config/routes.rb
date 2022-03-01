Rails.application.routes.draw do
  get 'sessions/new'
  resources :blogs
  resources :users, only: %i[ new create show ]
  resources :sessions, only: %i[ new create show destroy ]
  resources :favorites, only: %i[ create destroy ]
end
