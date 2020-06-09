Rails.application.routes.draw do
	get 'welcome/index'
	# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

	resources :events
	resources :users, only: [:new, :create]
	resource :user_session, only: [:new, :create, :destroy]

	delete '/sign_out', to: 'user_sessions#destroy', as: :sign_out
	get '/sign_in', to: 'user_sessions#new', as: :sign_in

	root 'welcome#index'
end
