class CreateVillages < ActiveRecord::Migration
  def change
    create_table :villages do |t|
      t.string :village_name
      t.text :description

      t.timestamps
    end
  end
end
