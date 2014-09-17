class SchoolsController < ApplicationController
  def index
  	@school = School.all
  end

  def new
  	@school = School.new
  end

  def create
  	@village = Village.find(params[:id])
		# @school = School.new(school_params)
		@school = @village.schools.build(school_params)
		if @school.save
			respond_to 	do |format|
				format.html {redirect_to schools_path}
			end
		else
			respond_to do |format|
				format.html {render 'new'}
			end
		end
	end

	def edit
		@school = School.find(params[:id])
	end

	def update
       @school = School.find(params[:id])
       if @school.update(school_params)
       	redirect_to schools_path
       else
       	render 'edit'
       end
	end

	def destroy
		@school = School.find(params[:id])
		@school.destroy
		redirect_to schools_path
	end

	private

	def school_params
		params.require(:school).permit(:name, :type, :address)
	end
end
