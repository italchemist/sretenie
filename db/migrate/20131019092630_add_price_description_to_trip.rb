class AddPriceDescriptionToTrip < ActiveRecord::Migration
  def change
    add_column :trips, :price_description, :text
  end
end
