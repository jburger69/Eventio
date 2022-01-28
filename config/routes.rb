Rails.application.routes.draw do
  
  root 'events#index'
  get 'profile', to: 'users#show'

  resources :events
  devise_for :users

end
