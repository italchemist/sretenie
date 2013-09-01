class AddTagToTripCategory < ActiveRecord::Migration
  def change
    add_column :trip_categories, :tag, :string
  end
end
