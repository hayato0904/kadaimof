class CreateNearestStations < ActiveRecord::Migration[5.2]
  def change
    create_table :nearest_stations do |t|
      t.string :route_name
      t.string :station_name
      t.integer :time

      t.timestamps
    end
  end
end
