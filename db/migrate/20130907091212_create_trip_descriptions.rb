class CreateTripDescriptions < ActiveRecord::Migration
  def change
    create_table :trip_descriptions do |t|
      t.references :trip, index: true
      t.integer :day
      t.text :description

      t.timestamps
    end
  end
end
