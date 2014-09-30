class TrainsController < ApplicationController
  def index
  	@train = Train.all
  end

  def new
  	@train = Train.new
  end

  def create
		@train = Train.new(train_params)
		if @train.save
			respond_to 	do |format|
				format.html {redirect_to trains_path}
			end
		else
			respond_to do |format|
				format.html {render 'new'}
			end
		end
	end

	def edit
		@train = Train.find(params[:id])
	end

	def update
       @train = Train.find(params[:id])
       if @train.update(train_params)
       	redirect_to trains_path
       else
       	render 'edit'
       end
	end

	def destroy
		@train = Train.find(params[:id])
		@train.destroy
		redirect_to trains_path
	end

	# def pan_to_mysore
	# 	@pmtrain = Train.all
	# end

	private

	def train_params
		params.require(:train).permit(:code, :train_name, :arrives, :departure, :stop_time, :days)
	end
end
