Rails.application.routes.draw do
  
  root 'events#index'
  get 'profile', to: 'users#show'
  resources :attendees, only:[:create]
  resources :events, only:[:new, :create, :show, :index]
  resources :order_items
  resources :tickets
  devise_for :users

end
