class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.string :facilities_provider
      t.integer :hospital_id
      t.string :healthcare_recipient
      t.integer :patient_id

      t.timestamps
    end
  end
end
