class AddNameAndLocationToHospital < ActiveRecord::Migration
  def change
    add_column :hospitals, :name, :string
    add_column :hospitals, :beds, :integer
  end
end
