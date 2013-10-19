class AddOrderNumberToTrip < ActiveRecord::Migration
  def change
    add_column :trips, :order_number, :integer
  end
end
