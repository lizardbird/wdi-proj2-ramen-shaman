Rails.application.routes.draw do

  root "welcome#index"
  resources :reviews do
    resources :bowls
    resources :comments
  end

end
