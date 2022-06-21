Rails.application.routes.draw do
  root 'property#index'
  resources :properties
end
