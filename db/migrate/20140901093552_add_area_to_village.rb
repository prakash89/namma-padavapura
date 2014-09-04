class AddAreaToVillage < ActiveRecord::Migration
  def change
    add_column :villages, :area, :string
  end
end
