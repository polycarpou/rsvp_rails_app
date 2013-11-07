class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def create
    Event.create(:name => params[:event][:name])
    redirect_to '/events'
  end

  def show
    @event = Event.find_by(:id => params[:id])
   #@event = Event.find(params[:event][:id])
  end

  def new
    @event = Event.new
  end
end
