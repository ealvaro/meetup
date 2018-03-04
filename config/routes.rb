Rails.application.routes.draw do
  resources :groups do
  	collection { post :import }
  end

  root to: "groups#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
