Rails.application.routes.draw do

  root "welcome#index"
  resources :bowls do
      resources :comments
  end

end
