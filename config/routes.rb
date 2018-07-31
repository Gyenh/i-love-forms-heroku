Rails.application.routes.draw do
	root to:'static_pages#home'
	
	get '/', to: 'static_pages#home', as: 'home'
	
	get '/user', to: 'user#new', as: "newuser"
	
	post '/', to: 'user#create'		# A UTILISER QUAND ON VEUT UTILISER FORM OU FORM TAG
	# post '/user', to: 'user#create'  	# A ACTIVER QUAND ON VEUT UTILISER FORM FOR
	
	get '/user/:username', to: 'user#show', as: 'usering'

	get '/user', to: 'user#errorpage'


end
