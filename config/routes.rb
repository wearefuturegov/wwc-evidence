# frozen_string_literal: true

Rails.application.routes.draw do
  get 'faqs', to: 'faq#index'
  get 'evidence-standards', to: 'standards#index'
  get 'how-we-built', to: 'how#index'
  get 'why-an-evidence-store', to: 'why#index'
  resources :interventions
  resources :pages, only: :show
  root to: 'interventions#index'

  devise_for :users
  namespace :admin do
    resources :interventions
    resources :tags
    resources :pages
    resources :users, only: %i[index new create show]

    root to: 'interventions#index'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
