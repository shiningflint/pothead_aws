class HomeController < ApplicationController
	def index
		@potions = Potion.limit(20).order created_at: :desc
	end
end