class EventAttendeesController < ApplicationController
    def new
        @event_attendee = EventAttendee.new
    end

    def create
        @event_attendee = EventAttendee.new(attendee_params)

        if @event_attendee.save
            redirect_to Event.find([attendee_params[:attended_event_id]])
        else
            render :new, status: :unprocessable_entity
        end
    end

    private
    def attendee_params
        params.permit(:attended_event_id, :event_attendee_id)
    end
end
