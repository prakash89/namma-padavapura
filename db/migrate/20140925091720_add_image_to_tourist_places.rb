class AddImageToTouristPlaces < ActiveRecord::Migration
  def change
    add_column :tourist_places, :image, :string
  end
end
