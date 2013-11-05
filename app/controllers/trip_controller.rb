class TripController < ApplicationController
  def show
  	@trip = Trip.find_by_id(params[:id])
  	@keywords = @trip.keywords
  	@photos = @trip.trip_photos.all
  	@first = true
  end
  
  def request_create
    @result = RequestMailer.request_email(params).deliver
  end

  def request_completed
  end
end
