class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.string :malady
      t.string :gender
      t.date :date_of_birth
      t.string :workflow_state
      t.string :facilities_provider
      t.integer :hospital_id
      t.timestamps
    end
  end
end
