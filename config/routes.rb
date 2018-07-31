Rails.application.routes.draw do

	
	get '/', to: 'user#new', as: 'home'
	post '/', to: 'user#create'
	get '/user/:username', to: 'user#show', as: 'user'

	get '/', to: 'user#errorpage'


end
