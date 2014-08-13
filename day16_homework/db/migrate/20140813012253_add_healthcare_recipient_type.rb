class AddHealthcareRecipientType < ActiveRecord::Migration
  def change
    add_column :doctors, :healthcare_recipient_type, :string
  end
end
