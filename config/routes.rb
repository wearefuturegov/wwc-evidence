# frozen_string_literal: true

Rails.application.routes.draw do

  get '/', to: redirect('https://whatworks-csc.org.uk')
  get '/pages/why-an-evidence-store', to: redirect('https://whatworks-csc.org.uk/evidence/evidence-store/why-an-evidence-store/')
  get '/pages/how-we-built-the-evidence-store', to: redirect('https://whatworks-csc.org.uk/evidence/evidence-store/evidence-standards/')
  get '/pages/evidence-standards', to: redirect('https://whatworks-csc.org.uk/evidence/evidence-store/our-ratings-explained/')
  get '/pages/faqs', to: redirect('https://whatworks-csc.org.uk/evidence/evidence-store/faqs/')
  get '/interventions/9', to: redirect('https://whatworks-csc.org.uk/evidence/evidence-store/intervention/child-mental-illness-prevention/')
  get '/interventions/10', to: redirect('https://whatworks-csc.org.uk/evidence/evidence-store/intervention/family-drug-and-alcohol-courts/')
  get '/interventions/8', to: redirect('https://whatworks-csc.org.uk/evidence/evidence-store/intervention/foster-and-kinship-care-support/')
  get '/interventions/1', to: redirect('https://whatworks-csc.org.uk/evidence/evidence-store/intervention/intensive-family-preservation-programmes/')
  get '/interventions/3', to: redirect('https://whatworks-csc.org.uk/evidence/evidence-store/intervention/kinship-care/')
  get '/interventions/5', to: redirect('https://whatworks-csc.org.uk/evidence/evidence-store/intervention/mellow-parenting/')
  get '/interventions/14', to: redirect('https://whatworks-csc.org.uk/evidence/evidence-store/intervention/parent-child-interaction-therapy/')
  get '/interventions/11', to: redirect('https://whatworks-csc.org.uk/evidence/evidence-store/intervention/residential-care/')
  get '/interventions/12', to: redirect('https://whatworks-csc.org.uk/evidence/evidence-store/intervention/sexual-abuse-recovery-using-cbt/')
  get '/interventions/7', to: redirect('https://whatworks-csc.org.uk/evidence/evidence-store/intervention/signs-of-safety/')
  get '/interventions/6', to: redirect('https://whatworks-csc.org.uk/evidence/evidence-store/intervention/solution-focused-brief-therapy/')
  get '/interventions/13', to: redirect('https://whatworks-csc.org.uk/evidence/evidence-store/intervention/treatment-foster-care/')

  resources :interventions
  resources :pages, only: :show
  root to: 'interventions#index'

  devise_for :users
  namespace :admin do
    resources :interventions
    resources :tags
    resources :pages
    resources :users, only: %i[index new create show]
    resources :banner_messages, only: %i[edit update]
    root to: 'interventions#index'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
