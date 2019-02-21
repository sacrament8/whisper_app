Rails.application.routes.draw do
  root to: 'monologues#index'
  resources :monologues do
    post :confirm, on: :collection
  end
end