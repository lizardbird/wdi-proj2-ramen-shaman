Rails.application.routes.draw do

  root "welcome#index"
  resources :reviews do
    resources :comments
  end

end
