class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :status
      t.decimal :total, precision: 5, scale: 2
      t.integer :quantity

      t.timestamps
    end
  end
end
