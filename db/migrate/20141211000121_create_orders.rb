class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :product_name
      t.string :address
      t.string :payment
      t.integer :user_id
      
      t.timestamps
    end
  end
end
