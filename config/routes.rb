Rails.application.routes.draw do
	root 'boards#index'
	devise_for :users 
	get '/mytasks', to: 'tasks#index'
	resources :boards do
		resources :lists
	end
	resources :lists do
		resources :tasks do
			get 'move_up', to: 'lists#move_up', as: "move"
		end
	end
end
