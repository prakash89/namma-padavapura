class HospitalsController < ApplicationController
  def index
  	@hospital = Hospital.all
  end

  def new
  	@hospital = Hospital.new
  end

  def create
		@hospital = Hospital.new(hospital_params)
		if @hospital.save
			respond_to 	do |format|
				format.html {redirect_to hospitals_path}
			end
		else
			respond_to do |format|
				format.html {render 'new'}
			end
		end
	end

	def edit
		@hospital = Hospital.find(params[:id])
	end

	def update
       @hospital = Hospital.find(params[:id])
       if @hospital.update(hospital_params)
       	redirect_to hospitals_path
       else
       	render 'edit'
       end
	end

	def destroy
		@hospital = Hospital.find(params[:id])
		@hospital.destroy
		redirect_to hospitals_path
	end

	private

	def hospital_params
		params.require(:hospital).permit(:name, :type, :address)
	end
end
