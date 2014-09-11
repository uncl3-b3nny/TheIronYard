class FullStreetAddressToHospital < ActiveRecord::Migration
  def change
    add_column :hospitals, :full_street_address, :string
  end
end
