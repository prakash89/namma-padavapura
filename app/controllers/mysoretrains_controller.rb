class MysoretrainsController < ApplicationController
  def index
  	@mtrain = Mysoretrain.all
  end

  def new
  	@mtrain = Mysoretrain.new
  end

  def create
		@mtrain = Mysoretrain.new(mtrain_params)
		if @mtrain.save
			respond_to 	do |format|
				format.html {redirect_to mysoretrains_path}
			end
		else
			respond_to do |format|
				format.html {render 'new'}
			end
		end
	end

	def edit
		@mtrain = Mysoretrain.find(params[:id])
	end

	def update
       @mtrain = Mysoretrain.find(params[:id])
       if @mtrain.update(mtrain_params)
       	redirect_to mysoretrains_path
       else
       	render 'edit'
       end
	end

	def destroy
		@mtrain = Mysoretrain.find(params[:id])
		@mtrain.destroy
		redirect_to mysoretrains_path
	end

	# def pan_to_mysore
	# 	@pmtrain = Train.all
	# end

	private

	def mtrain_params
		params.require(:mysoretrain).permit(:code, :train_name, :arrives, :departure, :stop_time, :days)
	end
end
