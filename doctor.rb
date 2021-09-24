class Doctor 
    @@all = []

    attr_accessor :name, :specialty

    def initialize(name, specialty)
        @name = name
        @specialty = specialty

        @@all << self
    end

    def appointments
        Appointment.all.select {|appt| appt.doctor === self}
    end

    def patients
        self.appointments.map {|appt| appt.patient}
    end

    def patient_names 
        self.appointments.map {|appt| appt.patient.name}.uniq
    end

    def appt_dates
        self.appointments.map {|appt| appt.date}
    end

    def self.popular_doctor
        Doctor.all.max_by { |doc| doc.appointments.length }
    end

    def self.all 
        return @@all
    end
end