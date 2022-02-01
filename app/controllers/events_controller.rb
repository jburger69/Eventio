class EventsController < ApplicationController
    before_action :authenticate_user!

    def index
        @events = Event.all
        @past_events = Event.past_events
        @future_events = Event.future_events
    end

    def show
        @event = Event.find(params[:id])
    end

    def new
        @event = Event.new
    end

    def create
        @user = current_user
        @event = @user.created_events.build(event_params)
        if @event.save
            redirect_to events_path
        else
            render 'new'
        end
    end

    private

    def event_params
        params.require(:event).permit(:name, :location, :date)
    end
end
