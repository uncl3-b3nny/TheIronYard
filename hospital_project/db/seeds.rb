# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
  # cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
  # Mayor.create(name: 'Emanuel', city: cities.first)

# 'rake db:seed' in terminal
fake_patients = 
  10.times do 
    Patient.create([{first_name: Faker::Name.first_name,last_name: Faker::Name.last_name, malady: 'sick', workflow_state: 'waiting', facilities_provider_id: '2', facilities_provider_type: 'Hospital', gender: 'male'}])
  end




  