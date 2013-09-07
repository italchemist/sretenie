class Trip < ActiveRecord::Base
	has_many :trip_descriptions
	belongs_to :trip_category
end
