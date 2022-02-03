class EventsController < ApplicationController
    before_action :authenticate_user!

    def index
        @events = Event.all
        @past_events = Event.past_events
        @future_events = Event.future_events
    end

    def show
        @event = Event.find(params[:id])
        @ticket_price = @event.tickets
        @order_item = current_order.order_items.new
    end

    def new
        @event = Event.new
        @tickets = @event.tickets.build
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
        params.require(:event).permit(:name, :location, :date, tickets_attributes: [:id, :title, :price])
    end
end
