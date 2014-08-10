class PatientsController < ApplicationController
    before_action :test_meth
    before_action :find_patient, only: [:show, :edit, :update, :destroy, :transition]

  def show
     
  end

  def new_patient
    @patient = Patient.new

  end

  def create_patient
    Patient.create patient_params
    if @patient.save == true
      redirect_to root_path
    else 
      render :new
    end
  end

  def edit
    
  end

  def update    
    if @patient.update_attributes patient_params
      redirect_to root_path
    else 
      render :edit
    end
  end

  def destroy
    @patients = Patient.find params[:id]
    @patients.delete
    redirect_to root_path
  end

    def transition
    event = params[:event]+'!'
    @patient.send(event.to_sym)
    redirect_to patient_path(@patient)
  end

private
  def test_meth
    new_patient
    create_patient
  end


  def find_patient
    @patient = Patient.find params[:id]
  end

  def patient_params
    params.require(:patient).permit(:first_name, :last_name, :malady, :date_of_birth, :gender)
  end
end