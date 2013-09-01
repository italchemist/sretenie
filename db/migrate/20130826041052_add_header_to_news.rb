class AddHeaderToNews < ActiveRecord::Migration
  def change
    add_column :news, :header, :string
  end
end
