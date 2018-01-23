Rails.application.routes.draw do
  get 'sessions/new'

  get 'home/index'

  resources :users do
  	resources :items
  end

  root 'home#index'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get '/my_wardrobe', to: 'items#my_wardrobe'
end
