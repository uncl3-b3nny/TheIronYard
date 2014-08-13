class CreateHospitals < ActiveRecord::Migration
  def change
    create_table :hospitals do |t|
      t.string :name
      t.string :location
      t.integer :beds
      t.timestamps
    end
  end
end
