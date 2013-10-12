class TripController < ApplicationController
  def show
  	@trip = Trip.find_by_id(params[:id])
  	@keywords = @trip.keywords
  end
end
