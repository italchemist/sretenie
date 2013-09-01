class Trip < ActiveRecord::Base
	has_many :trips
	belongs_to :trip_category
end
