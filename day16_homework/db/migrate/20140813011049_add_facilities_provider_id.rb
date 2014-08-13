class AddFacilitiesProviderId < ActiveRecord::Migration
  def change
    add_column :patients, :facilities_provider_id, :integer
  end
end
