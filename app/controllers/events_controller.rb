class EventsController < ApplicationController
  def index
  	@event = Event.all
  end

  def new
  	@event = Event.new
  end

  def create
  	@event = Event.new(event_params)
  	if @event.save
  	respond_to do |format|
  		format.html {redirect_to events_path }
  	end
  	else
  		respond_to do |format|
				format.html {render 'new'}
			end
  	end
  end

  def edit
  end

  private
  def event_params
  	params.require(:event).permit(:event_name, :organized_by, :address, :time, :date, :about_event)
  end
end
