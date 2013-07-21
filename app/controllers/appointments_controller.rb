class AppointmentsController < ApplicationController

	def new
		@appointment = Appointment.new
	end
	
	def create
		@appointment = Appointment.create(params[:appointment])
		if @appointment.save
			redirect_to appointments_url, notice: "Appointment added"
		else
			render :new
		end
	end

	def index
		@appointments = current_doctor.appointments.order(:date)
	end
end
