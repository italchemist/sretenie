# encoding: utf-8

class WelcomeController < ApplicationController
	def index
		I18n.locale = :ru

		@ads = Advertisement.all

		@first = true
		@categories = TripCategory.all
		@best_trips_headers = {}
		@best_trips_headers[:oneday] = "Однодневные поездки"
		@best_trips_headers[:manyday] = "Многодневные поездки"
		@best_trips_headers[:external] = "Поездки за границу"
		
		@best_trips = {}
		@best_trips[:oneday] = TripSchedule.joins(:trip).where{{trip: (trip_category_id == 1)}}.where{date_start >= DateTime.now}.where{{trip: (show_in_upcoming != false)}}.order{date_start}.take(5)
		@best_trips[:manyday] = TripSchedule.joins(:trip).where{{trip: (trip_category_id == 2)}}.where{date_start >= DateTime.now}.where{{trip: (show_in_upcoming != false)}}.order{date_start}.take(5)
		@best_trips[:external] = TripSchedule.joins(:trip).where{{trip: (trip_category_id >= 3)}}.where{{trip: (trip_category_id <= 13)}}.where{{trip: (show_in_upcoming != false)}}.where{date_start >= DateTime.now}.order{date_start}.take(5)

		@trips = Trip.order{order_number}.order{trip_category_id}.to_a
		@schedule = TripSchedule.joins(:trip).order("trip_category_id ASC").to_a

		@months_list = []
		@months = [ "ЯНВ", "ФЕВ", "МАР", "АПР", "МАЙ", "ИЮН", "ИЮЛ", "АВГ", "СЕН", "ОКТ", "НОЯ", "ДЕК" ]
		current_month = Date.today.month
		for i in 1..12
			current_month = 1 if current_month >= 13
			@months_list << current_month
			current_month += 1
		end
	end

	def request_create
		@result = RequestMailer.request_email(params).deliver
	end

	def request_completed
	end
end
