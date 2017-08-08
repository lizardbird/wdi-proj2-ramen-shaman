Rails.application.routes.draw do


  devise_for :users, :controllers => {registrations: 'registrations'}
  root "welcome#index"
  resources :restaurants
  resources :bowls do
    resources :comments
  end
end
