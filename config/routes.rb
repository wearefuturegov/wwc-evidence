# frozen_string_literal: true

Rails.application.routes.draw do
  get 'how', to: 'how#index'
  get 'about', to: 'about#index'
  get 'outcome-framework', to: 'outcome_framework#index'
  get 'how', to: 'how#index'
  resources :interventions
  root to: 'interventions#index'

  devise_for :users
  namespace :admin do
    resources :interventions
    resources :tags
    resources :pages

    root to: 'interventions#index'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
