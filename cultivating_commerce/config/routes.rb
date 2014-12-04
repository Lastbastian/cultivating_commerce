Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'registrations' }

  root 'pages#home'

  get 'intro' => 'pages#intro'

  # get 'user/:id' => 'user#home'
  # get 'user/:id/edit' => 'user#edit'

  get 'events/:id/unattend' => 'events#unattend'
  get 'events/:id/cancel' => 'events#cancel'
  get 'events/:id/attend' => 'events#attend'

  resources :users
  resources :events
  resources :listings


end
