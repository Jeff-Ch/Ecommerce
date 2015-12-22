class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :"Line 1 of Address"
      t.string :"Line 2 of Address"
      t.string :City
      t.string :State
      t.integer :Zip
      t.references :addressable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
