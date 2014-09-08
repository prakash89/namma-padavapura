class CreateTouristPlaces < ActiveRecord::Migration
  def change
    create_table :tourist_places do |t|
      t.string :place_name
      t.string :address
      t.text :description

      t.timestamps
    end
  end
end
