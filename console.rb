require "pry"
require_relative "./doctor.rb"
require_relative "./patient.rb"
require_relative "./appointment.rb"

pat1 = Patient.new("Charmander")
pat2 = Patient.new("Squirtle")
pat3 = Patient.new("Bulbasaur")
pat4 = Patient.new("Pikachu")
pat5 = Patient.new("Charmander")

doc1 = Doctor.new("Steve", "Neck Doctor")
doc2 = Doctor.new("Jan", "Brain Surgeon")

a1 = Appointment.new(doc1, pat1, "09/24/21")
a2 = Appointment.new(doc1, pat2, "08/18/21")
a3 = Appointment.new(doc1, pat3, "09/08/21")
a4 = Appointment.new(doc2, pat1, "09/02/21")
a5 = Appointment.new(doc1, pat5, "09/02/21")




binding.pry