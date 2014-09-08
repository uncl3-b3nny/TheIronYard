class AddDoctorRelationshipData < ActiveRecord::Migration
  def change
    add_column :doctors, :healthcare_recipient_id, :integer
    add_column :doctors, :healthcare_recipient_type, :string
    add_column :doctors, :facilities_provider_id, :integer
    add_column :doctors, :facilities_provider_type, :string
  end
end
