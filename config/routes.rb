Rails.application.routes.draw do
  devise_for :custmers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :custmers
  resources :tasks
end
