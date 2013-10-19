class AddShowInUpcomingToTrip < ActiveRecord::Migration
  def change
    add_column :trips, :show_in_upcoming, :boolean
  end
end
