Rails.application.routes.draw do


 
	resources :tags do
   resources :posts
end

  resources :categories do
  resources :posts
end

  devise_for :users
  resources :posts do
  	resources :comments
  end
  root "posts#index"
end
