Rails.application.routes.draw do
  devise_for :users
  resources :invoices, only: [:index, :new]
  root controller: :landing, action: :index
  resources :company, only: [:index, :create, :show]
end

