Rails.application.routes.draw do
  get 'user/index'

  resources :venues
  resources :artists
  resources :events
  
  root 'events#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
