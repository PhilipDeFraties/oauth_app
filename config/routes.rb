Rails.application.routes.draw do

  root 'home#index'

  get '/auth/github/callback', to: 'sessions#create'

  get 'users/public_repositories', to: 'users#public_repos'
  get 'users/private_repositories', to: 'users#private_repos'

  get '/dashboard', to: 'dashboard#show'
end
