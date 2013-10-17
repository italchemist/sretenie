class CreateTripPhoto < ActiveRecord::Migration
  def change
    create_table :trip_photos do |t|
      t.string :url
      t.text :description
      t.references :trip, index: true
    end
  end
end
