class CreateOffices < ActiveRecord::Migration
  def change
    create_table :offices do |t|
      t.string :name
      t.string :address
      t.text :about
      t.string :image

      t.timestamps
    end
  end
end
