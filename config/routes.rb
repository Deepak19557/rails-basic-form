Rails.application.routes.draw do
  get 'cities/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "welcomes#index"

  resources :welcomes do
  	collection do
  		get :collection_method
  	end
  	member do
  		get :member_method
  	end
  end
end
