class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def index
    @events = Event.all
  end

  def create
    @planner = Planner.find_by(id: session[:planner_id])
    @event = @planner.events.build(event_params)
    p "====================="
    p @event
    p "====================="
    if @event.save
      redirect_to "events/index"
    else
      render :new
    end
  end

  private
    def event_params
      params.require(:event).permit(:name, :prefecture, :address1)
    end
end
