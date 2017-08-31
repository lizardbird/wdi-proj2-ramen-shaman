Rails.application.routes.draw do


  devise_for :users, :controllers => {registrations: 'registrations'}
  # Nice job customizing user sign-up
  root "pages#index"
  get "/pages/:page" => "pages#show"
  # To use a different named parameter than :id, you can also use the 'param' option:
  # resources :pages, param: :page, only: [:show]


  resources :restaurants
  resources :bowls do
    resources :comments
    resources :topping_tags, only: [:new, :create]
  end
  resources :bowls, only: [:index, :show] do
   member do
     post 'add_favorite'
     delete 'remove_favorite'
   end
 end
 resources :toppings
end
