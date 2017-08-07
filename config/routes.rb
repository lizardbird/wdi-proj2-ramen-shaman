Rails.application.routes.draw do


  devise_for :users
  root "welcome#index"
  resources :restaurants
  resources :bowls do
    resources :comments
  end
end
