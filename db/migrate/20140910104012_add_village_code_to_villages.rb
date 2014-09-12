class AddVillageCodeToVillages < ActiveRecord::Migration
  def change
    add_column :villages, :village_code, :integer
  end
end
