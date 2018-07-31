Rails.application.routes.draw do
	root to:'static_pages#home'
	
	get '/', to: 'static_pages#home', as: 'home'
	
	get '/user', to: 'user#new', as: "newuser"
	post '/', to: 'user#create'
	
	get '/user/:username', to: 'user#show', as: 'usering'

	get '/user', to: 'user#errorpage'


end
