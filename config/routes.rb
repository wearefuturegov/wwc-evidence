# frozen_string_literal: true

Rails.application.routes.draw do
  resources :interventions
  root to: 'interventions#index'

  devise_for :users
  namespace :admin do
    resources :interventions
    resources :tags
    resources :users, only: %i[index new create show]

    root to: 'interventions#index'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
