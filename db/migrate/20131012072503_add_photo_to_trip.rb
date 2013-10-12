class AddPhotoToTrip < ActiveRecord::Migration
  def change
    add_column :trips, :photo, :string
  end
end
