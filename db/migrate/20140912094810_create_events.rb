class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_name
      t.string :organized_by
      t.text :address
      t.datetime :date
      t.datetime :time
      t.text :about_event

      t.timestamps
    end
  end
end
