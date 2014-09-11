class AddCityStateZipToHospital < ActiveRecord::Migration
  def change
    add_column :hospitals, :city, :string
    add_column :hospitals, :state, :string
    add_column :hospitals, :zip, :integer
  end
end
