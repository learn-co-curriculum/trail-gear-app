Rails.application.routes.draw do
  resources :trails, only: [:index, :new, :create]
end
