class AddHealthcareRecipientId < ActiveRecord::Migration
  def change
    add_column :doctors, :healthcare_recipient_id, :integer
  end
end
