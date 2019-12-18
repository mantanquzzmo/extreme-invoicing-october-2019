Rails.application.routes.draw do
  devise_for :users
  resources :invoices, only: [:index, :new]
  resources :customers, only: [:create, :new]
  root controller: :landing, action: :index
end

