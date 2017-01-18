Rails.application.routes.draw do
  resources :stores
  resources :agents
  resources :branches
  resources :products
  resources :sales
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
