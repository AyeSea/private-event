class EventsController < ApplicationController
	before_action :signed_in?, only: [:new, :create]

	def index
		@events = Event.all
	end

	def new
	end

	def create
		@event = current_user.events.build(event_params)
		if @event.save
			flash[:success] = 'Event created!'
			redirect_to @event
		else
			flash.now[:danger] = 'Could not create event!'
			render 'new'
		end
	end

	def show
		@event = Event.find_by(id: params[:id])
	end

	private
		def event_params
			params.require(:event).permit(:name, :location, :date, :description)
		end
end
