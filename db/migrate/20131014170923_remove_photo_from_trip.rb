class RemovePhotoFromTrip < ActiveRecord::Migration
  def change
    remove_column :trips, :photo, :string
  end
end
