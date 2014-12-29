class AddSlugToShipments < ActiveRecord::Migration
  def change
    add_column :shipments, :slug, :string
  end
end
