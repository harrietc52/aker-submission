Rails.application.routes.draw do

  get 'claim_submissions/index'
  get 'claim_submissions/show', to: "claim_submissions#show"

  root 'material_submissions#index'

  get '/materials_schema', to: 'material_submissions#schema'

  resources :material_receptions
  resources :material_submissions do
    resources :build, controller: 'submissions'
  end


end
