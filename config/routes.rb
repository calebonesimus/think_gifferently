Rails.application.routes.draw do
  resources :gifs
  root 'gifs#index'
end
