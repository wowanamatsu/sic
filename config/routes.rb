Rails.application.routes.draw do

	resources :users
	get 'sign_in' => 'sessions#new'
	post 'sign_in' => 'sessions#create'
	delete 'sign_out' => 'sessions#destroy'


	get 'sobre', controller: 'home'
	get 'ajuda', controller: 'home'
	root 'home#index'


end
