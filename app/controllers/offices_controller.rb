class OfficesController < ApplicationController
  def index
  	@office = Office.all
  end

  def new
  	@office = Office.new
  end

  def create
		@office = Office.new(office_params)
		if @office.save
			respond_to 	do |format|
				format.html {redirect_to offices_path}
			end
		else
			respond_to do |format|
				format.html {render 'new'}
			end
		end
	end

	def edit
		@office = Office.find(params[:id])
	end

	def update
       @office = Office.find(params[:id])
       if @office.update(office_params)
       	redirect_to offices_path
       else
       	render 'edit'
       end
	end

	def destroy
		@office = Office.find(params[:id])
		@office.destroy
		redirect_to offices_path
	end

	private

	def office_params
		params.require(:office).permit(:name, :address, :about, :image, :remote_image_url)
	end
end
