class EventsController < ApplicationController
  respond_to :html
  
  def index
  end

  def show
    @event = Event.find(params[:id])
    respond_with @event
  end

end
