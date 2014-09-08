class VillagesController < ApplicationController
	def index
		@village = Village.all
	end

	def new
		@village = Village.new
	end

	def create
		@village = Village.new(village_params)
		if @village.save
			respond_to 	do |format|
				format.html {redirect_to villages_path}
			end
		else
			respond_to do |format|
				format.html {render 'new'}
			end
		end
	end

	def edit
		@village = Village.find(params[:id])
	end

	def update
       @village = Village.find(params[:id])
       if @village.update(village_params)
       	redirect_to villages_path
       else
       	render 'edit'
       end
	end

	def destroy
		@village = Village.find(params[:id])
		@village.destroy
		redirect_to villages_path
	end

	private

	def village_params
		params.require(:village).permit(:village_name, :description, :area)
	end

end
