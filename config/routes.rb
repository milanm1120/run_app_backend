Rails.application.routes.draw do
  resources :runs, only: [:index, :create, :destroy]
  resources :runners, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
