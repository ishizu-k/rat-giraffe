Rails.application.routes.draw do
  root to: 'rents#index'
  resources :rents
end
