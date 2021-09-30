# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



5.times do 

  Doctor.create(name: Faker::Name.name, doctor_type: "dentist")

end 


5.times do 
  Patient.create(name: Faker::Name.name, age: rand(20..50))

end 



  Appointment.create(date: DateTime.new(2022, 07, 21), notes: "We are setting up for orthodonist", patient_id: rand(1..5), doctor_id: rand(1..5))
  
  Appointment.create(date: DateTime.new(2023, 01, 22), notes: "Everything looks healthy", patient_id: rand(1..5), doctor_id: rand(1..5))


  Appointment.create(date: DateTime.new(2024, 03, 11), notes: "Braces are needed!!", patient_id: rand(1..5), doctor_id: rand(1..5))






