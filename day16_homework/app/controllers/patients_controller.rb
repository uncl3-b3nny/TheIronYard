class PatientsController < ApplicationController

  before_action :find_patient, only: [:show, :edit, :update, :destroy, :transition]

  before_action :find_hospital, only: [:show, :new, :create, :edit, :update, :destroy, :transition]

  def show
    @medications = Medication.all
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = @hospital.patients.new(patient_params)

    if @patient.save == true
      redirect_to hospital_path(@hospital, method: :get)
    else 
      render :new
    end
  end

  def edit
    @patient = Patient.find params[:id]

  end

  def update   
    @patient = Patient.find params[:id]
    if @patient.update_attributes patient_params
      redirect_to hospital_path(@hospital)
    else 
      render :edit
    end
  end

  def destroy
    @patients = Patient.find params[:id]
    @patients.delete
    redirect_to hospital_path(@hospital, method: :get)
  end

    def transition
    event = params[:event]+'!'
    @patient.send(event.to_sym)
    redirect_to patient_path(@patient)
  end

private

  def find_patient
    @patient = Patient.find(params[:id])
  end

  def find_hospital
    @hospital = Hospital.find(params[:hospital_id])
  end

  def patient_params
    params.require(:patient).permit(:first_name, :last_name, :malady, :gender, :date_of_birth, :workflow_state, :hospital_id)
  end
end