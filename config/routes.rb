Rails.application.routes.draw do


  devise_for :users, :controllers => {registrations: 'registrations'}
  root "welcome#index"
  resources :restaurants
  resources :bowls do
    resources :comments
    resources :tags, only: [:new, :create]
  end
  resources :bowls, only: [:index, :show] do
   member do
     post 'add_favorite'
     delete 'remove_favorite'
   end
 end
 resources :toppings
end
