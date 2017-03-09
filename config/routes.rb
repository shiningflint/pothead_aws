Rails.application.routes.draw do
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	scope '/admin' do
		resources :potions, except: :show
	end
	get '/potions/:pot_slug', to: 'potions#show', as: 'showpotion', param: :pot_slug
	
	root 'home#index'
end