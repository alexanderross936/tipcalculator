Rails.application.routes.draw do
  root 'tips#new'
  post 'tips/new'
  get 'tips/new'
  get 'tips/results'
  resources :tips
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
