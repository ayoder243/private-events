class EventsController < ApplicationController
    def index
        @events = Event.all
    end

    def show
        @event = Event.find(params[:id])
        @attendees = Event.find(@event.id).event_attendees
    end

    def new
        @event = Event.new
    end

    def create
        @event = Event.new(event_params)

        if @event.save
            redirect_to @event
        else
            render :new, status: :unprocessable_entity
        end
    end

    private

    def event_params
        params.require(:event).permit(:date, :location, :creator_id)
    end
end
