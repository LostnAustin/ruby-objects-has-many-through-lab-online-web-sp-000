class Patient
  attr_accessor :name, :date
 @@all = []

 def initialize(name)
   @name = name
   @@all << self
 end

 def self.all
   @@all
 end

 def new_appointment(doctor, date)
   Appointment.new(date, self, doctor)
 end

 def appointments
   Appointment.all.select do |appointment|
     appointment.patient == self
   end
 end

 def doctors
   Appointment.all.select do |appointment|
     appointment.doctor 
   end
 end

end
