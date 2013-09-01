class AddTripCategoryIdToTrip < ActiveRecord::Migration
  def change
    add_reference :trips, :trip_category, index: true
  end
end
