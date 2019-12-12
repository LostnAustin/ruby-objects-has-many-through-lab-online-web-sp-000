require "pry"
class Doctor
  attr_accessor :name, :patient, :date
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
#binding.pry
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def new_appointment(patient, date)
  #  binding.pry
    Appointment.new(date, patient, self)

  end
#The Doctor class needs an instance method,
#patients, that iterates over that doctor's Appointments and
 #collects the patient that belongs to each Appointments.
  def patients
    appointments.collect do |appointment|
     appointment.patient
    end
  end
end
