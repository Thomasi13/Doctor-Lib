require'faker'


10.times do
	doctors = Doctor.create(first_name:Faker::Name.name, last_name: Faker::Name.name, speciality: Faker::Job.field , postal_code: Faker::Address.zip_code)
end

10.times do
	patients = Patient.create(first_name:Faker::Name.name, last_name: Faker::Name.name)
end

10.times do
	appointments = Appointment.create(date: Faker::Date.backward(14),  doctor_id: Faker::Number.between(1, 10), patient_id: Faker::Number.between(1, 10))
end


