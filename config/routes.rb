Rails.application.routes.draw do
  
  root 'images#index'
  
  get 'sessions/login'

  get 'sessions/logout'

  get 'users/main'
  
  get 'create' => 'users#create'
  
  post 'login' => 'sessions#login' 
  
  get 'logout' => 'session#logout' 
  
  get 'images' => 'images#index'
  
  get '/images/index'

  get 'images/new'
  
  get 'images/:id' => 'images#show'
  
  get '/about' => 'images#about'
  
  get 'images/edit/:id' => 'images#edit'
  
  delete 'destroy' => 'images#destroy'

  resources :user, :images

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
