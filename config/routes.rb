Rails.application.routes.draw do


  root "welcome#index"
  resources :restaurants
  resources :bowls do
    resources :comments
  end
end
