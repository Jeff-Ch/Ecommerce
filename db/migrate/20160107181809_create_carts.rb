class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.references :user, index: true
      t.references :product, index: true
      t.integer :quantity
      t.references :order, index:true

      t.timestamps
    end
  end
end
