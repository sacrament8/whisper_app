Rails.application.routes.draw do
  root to: 'monologues#index'
  resources :monologues do
    post :confirm, on: :collection
  end
end

=begin
        Prefix Verb   URI Pattern                    Controller#Action
    monologues GET    /monologues(.:format)          monologues#index
               POST   /monologues(.:format)          monologues#create
 new_monologue GET    /monologues/new(.:format)      monologues#new
edit_monologue GET    /monologues/:id/edit(.:format) monologues#edit
     monologue GET    /monologues/:id(.:format)      monologues#show
               PATCH  /monologues/:id(.:format)      monologues#update
               PUT    /monologues/:id(.:format)      monologues#update
               DELETE /monologues/:id(.:format)      monologues#destroy
=end