Rails.application.routes.draw do
	root 'transactions#index'
  devise_for :users, :controllers => { registrations: 'registrations' }
  get '/transactions/new', to: 'transactions#new', as: 'new_transaction'
  post '/transactions/create', to: 'transactions#create', as: 'create_transaction'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
