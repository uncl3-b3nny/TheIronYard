class CreateMedications < ActiveRecord::Migration
  def change
    create_table :medications do |t|
      t.string :description
      t.string :instructions
      t.string :patient_id

      t.timestamps
    end
  end
end
