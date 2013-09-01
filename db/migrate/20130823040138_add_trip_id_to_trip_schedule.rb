class AddTripIdToTripSchedule < ActiveRecord::Migration
  def change
    add_reference :trip_schedules, :trip, index: true
  end
end
