Rails.application.routes.draw do

  resources :doors, only: %i(index show edit update)

  get 'overview', to: 'doors#overview'

  root 'doors#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
