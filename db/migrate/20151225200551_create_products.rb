class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :url
      t.decimal :price, precision: 5, scale: 2

      t.timestamps
    end
  end
end
