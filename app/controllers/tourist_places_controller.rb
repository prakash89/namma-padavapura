class TouristPlacesController < ApplicationController
  def index
  	@place = TouristPlace.all
  end

  def new
  	@place = TouristPlace.new
  end

  def create
		@place = TouristPlace.new(place_params)
		if @place.save
			respond_to 	do |format|
				format.html {redirect_to tourist_places_path}
			end
		else
			respond_to do |format|
				format.html {render 'new'}
			end
		end
	end

	def edit
		@place = TouristPlace.find(params[:id])
	end

	def update
       @place = TouristPlace.find(params[:id])
       if @place.update(place_params)
       	redirect_to tourist_places_path
       else
       	render 'edit'
       end
	end

	def destroy
		@place = TouristPlace.find(params[:id])
		@place.destroy
		redirect_to tourist_places_path
	end

	private

	def place_params
		params.require(:tourist_place).permit(:place_name, :address, :description)
	end
end
