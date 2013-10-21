class TripController < ApplicationController
  def show
  	@trip = Trip.find_by_id(params[:id])
  	@keywords = @trip.keywords
  	@photos = @trip.trip_photos.all
  	@first = true
  end
end
