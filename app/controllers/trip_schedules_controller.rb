class TripSchedulesController < ApplicationController
  def show
  	@trip = TripSchedule.find_by_id(params[:id])
  	@keywords = @trip.trip.keywords
  end
end
