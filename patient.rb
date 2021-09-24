class Patient 
    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def appointments
        Appointment.all.select {|appt| appt.patient === self}
    end

    def doctors
        self.appointments.map {|appt| appt.doctor }
    end

    def self.all 
        return @@all
    end
end