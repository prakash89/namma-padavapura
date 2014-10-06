class CreateBuses < ActiveRecord::Migration
  def change
    create_table :buses do |t|
      t.string :vlg_name
      t.string :timing

      t.timestamps
    end
  end
end
