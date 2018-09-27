# frozen_string_literal: true

Rails.application.routes.draw do
  resources :interventions
  root to: 'interventions#index'

  get 'intervention/index'
  get 'intensive-family-preservation-programmes', to: 'intervention#intensive-family-preservation-programmes'
  get 'maternal-child', to: 'intervention#maternal-child'
  get 'mellow-parenting', to: 'intervention#mellow-parenting'

  devise_for :users
  namespace :admin do
    resources :interventions

    root to: 'interventions#index'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
