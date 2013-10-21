class CreateAdvertisements < ActiveRecord::Migration
  def change
    create_table :advertisements do |t|
      t.string :url
      t.text :description

      t.timestamps
    end
  end
end
