class AddKeywordsToTrip < ActiveRecord::Migration
  def change
    add_column :trips, :keywords, :text
  end
end
