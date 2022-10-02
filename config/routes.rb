Rails.application.routes.draw do

 
  root to: "blogs#index"
  resources :tags
  resources :blogs
  resources :categories

end
