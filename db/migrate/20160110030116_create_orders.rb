class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :shipspeed, index: true
      t.references :orderstatus, index: true

      t.timestamps
    end
  end
end
