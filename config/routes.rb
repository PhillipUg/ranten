Rails.application.routes.draw do
	root 'rants#index'

	get 'home', to: 'homepage#home', as: 'home'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
 
  resources :users do
 		post 'follow', to: 'users#follow', as: 'follow'
  end

  resources :rants
end
