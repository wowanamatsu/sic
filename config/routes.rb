Rails.application.routes.draw do

  resources :paises
	get 'sobre', controller: 'home'
	get 'ajuda', controller: 'home'
	root 'home#index'


end
