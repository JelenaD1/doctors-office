class AppointmentsController < ApplicationController

  def new
    @appointment = Appointment.new
    @all_doctors = Doctor.all 
    @all_patients = Patient.all  
  end 

  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      redirect_to doctor_path(@appointment.doctor)
    else
      render :new
    end 
  end 

  private

  def appointment_params
    params.require(:appointment).permit(:date, :notes, :doctor_id, :patient_id)
  end 
end
