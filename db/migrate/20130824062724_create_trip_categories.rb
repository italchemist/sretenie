class CreateTripCategories < ActiveRecord::Migration
  def change
    create_table :trip_categories do |t|
      t.string :name
    end
  end
end
