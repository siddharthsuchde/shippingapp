class CreateShipments < ActiveRecord::Migration
  def change
    create_table :shipments do |t|
      t.string :service_type
      t.string :weight
      
      t.timestamps
    end
  end
end
