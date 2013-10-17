class Trip < ActiveRecord::Base
	has_many :trip_descriptions
	has_many :trip_photos
	belongs_to :trip_category
	accepts_nested_attributes_for :trip_photos
end
