class CreateShipSpeeds < ActiveRecord::Migration
  def change
    create_table :ship_speeds do |t|
      t.string :speed

      t.timestamps
    end
  end
end
