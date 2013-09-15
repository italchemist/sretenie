# encoding: utf-8

class WelcomeController < ApplicationController
	def index
		@categories = TripCategory.all
		@best_trips_headers = {}
		@best_trips_headers[:oneday] = "Однодневные поездки"
		@best_trips_headers[:manyday] = "Многодневные поездки"
		@best_trips_headers[:external] = "Поездки за границу"
		
		@best_trips = {}
		@best_trips[:oneday] = TripSchedule.joins(:trip).where{{trip: (trip_category_id == 1)}}.where{date_start >= DateTime.now}.take(5)
		@best_trips[:manyday] = TripSchedule.joins(:trip).where{{trip: (trip_category_id == 3)}}.where{date_start >= DateTime.now}.take(5)
		@best_trips[:external] = TripSchedule.joins(:trip).where{{trip: (trip_category_id >= 4)}}.where{date_start >= DateTime.now}.take(5)


		@trips = Trip.order("trip_category_id ASC").to_a
		@schedule = TripSchedule.joins(:trip).order("trip_category_id ASC").to_a
	end
end
