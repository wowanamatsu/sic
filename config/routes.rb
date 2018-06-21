Rails.application.routes.draw do

	get 'sobre', controller: 'home'
	get 'ajuda', controller: 'home'
	root 'home#index'


end
