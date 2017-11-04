Rails.application.routes.draw do
  
  # get 'agent/new'

  # get 'agent/create'

  # get 'agent/index'

  # get 'agent/show'
  resources :agent 
  
  root to: "home#index"

  resources :agent_searches, only: [:show, :create]
end
