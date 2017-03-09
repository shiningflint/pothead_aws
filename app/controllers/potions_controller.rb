class PotionsController < ApplicationController
	def index
		@potions = Potion.limit(1000).order created_at: :desc
	end
	def new
		@potion = Potion.new
	end
	def show
		@potion = Potion.find_by(pot_slug: params[:pot_slug])
	end
	
	def edit
		@potion = Potion.find(params[:id])
	end
	
	def create
		@potion = Potion.new(potion_params)
		if @potion.save
			redirect_to root_url
		else
			render 'new'
		end
	end
	
	def update
		@potion = Potion.find(params[:id])
		@potion.update(potion_params)
		
		redirect_to potions_path
	end
	
	def destroy
		@potion = Potion.find(params[:id])
		@potion.destroy
		redirect_to potions_path
	end
	
	private
		def potion_params
			params.require(:potion).permit(:pot_name, :pot_slug, :pot_desc, :pot_img, :pot_creator)
		end
end
