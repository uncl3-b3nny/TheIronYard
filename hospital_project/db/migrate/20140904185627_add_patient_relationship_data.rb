class AddPatientRelationshipData < ActiveRecord::Migration
  def change
    add_column :patients, :facilities_provider_id, :integer
    add_column :patients, :facilities_provider_type, :string
  end
end
