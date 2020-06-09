Rails.application.routes.draw do
  root to: '/heroes', to: 'api/heroes#index'
  
  namespace :api do
    resources :heroes, only: [:index] do
      get '/matches', to: 'heroes#show'
    end
  end
end
