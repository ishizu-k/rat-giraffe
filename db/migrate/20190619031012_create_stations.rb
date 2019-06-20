class CreateStations < ActiveRecord::Migration[5.0]
  def change
    create_table :stations do |t|
      t.string :line_name
      t.string :station_name
      t.string :walk
      t.references :rent, foreign_key: true

      t.timestamps
    end
  end
end
