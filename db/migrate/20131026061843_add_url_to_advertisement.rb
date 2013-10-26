class AddUrlToAdvertisement < ActiveRecord::Migration
  def change
    add_column :advertisements, :adv_url, :string
  end
end
