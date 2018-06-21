Rails.application.routes.draw do

	resources :users


	get 'sobre', controller: 'home'
	get 'ajuda', controller: 'home'
	root 'home#index'


end
