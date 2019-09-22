Rails.application.routes.draw do

  # root directory
  root to: 'pages#home'

  # static pages with custom routes
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  # custom portfolio show resource
  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  # standard resource routes on blog
  resources :blogs

  # custom route for blog enum
  resources :blogs do
    member do
      get :toggle_status
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
