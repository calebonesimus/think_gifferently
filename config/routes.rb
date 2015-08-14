Rails.application.routes.draw do

  get 'tags/:tag' => 'gifs#tagged', as: :tagged

  resources :users, only: [:new, :create]
  resources :user_sessions, only: [:create, :destroy]
  delete '/sign_out', to: 'user_sessions#destroy', as: :sign_out
  get '/sign_in', to: 'user_sessions#new', as: :sign_in

  resources :gifs do
    member do
      post 'like'
      post 'dislike'
    end
  end

  root 'gifs#index'
end
