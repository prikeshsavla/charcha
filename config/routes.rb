Rails.application.routes.draw do
  
  resources :posts do 
    resources :comments
  end
  
  resources :admin, only: [:index]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "posts#index"
end
