class CreateTrains < ActiveRecord::Migration
  def change
    create_table :trains do |t|
      t.integer :code
      t.string :train_name
      t.string :arrives
      t.string :departure
      t.string :stop_time
      t.string :days

      t.timestamps
    end
  end
end