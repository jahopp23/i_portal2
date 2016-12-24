Rails.application.routes.draw do
  

  root 'sessions#new'
  
  get 'sessions/new' => 'sessions#new'
  
  post 'sessions' => 'sessions#create'
  
  delete 'sessions' => 'sessions#destroy'
  
  post 'images' => 'images#create'
  
  get 'images' => 'images#index'
  
  get '/images/index'

  get 'images/new'
  
  get 'images/:id' => 'images#show'
  
  get '/about' => 'images#about'
  
  get 'images/edit/:id' => 'images#edit'
  
  delete 'destroy' => 'images#destroy'

  resources :images

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
