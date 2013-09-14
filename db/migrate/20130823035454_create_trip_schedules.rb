class CreateTripSchedules < ActiveRecord::Migration
  def change
    create_table :trip_schedules do |t|
      t.datetime :date_start
      t.datetime :date_end
      t.float :price
    end
  end
end
