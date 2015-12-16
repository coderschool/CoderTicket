class TicketsController < ApplicationController
  def new
    @event = Event.find(params[:event_id])
  end
end
