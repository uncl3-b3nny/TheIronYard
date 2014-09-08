class HospitalsController < ApplicationController
  before_action :authenticate_user!
  def index
    @hospitals = Hospital.all
  end

  def show
    @hospital = Hospital.find params[:id]
    @patients = @hospital.patients
    @doctors = @hospital.doctors
  end

  def new
    @hospital = Hospital.new
  end

  def create
    @hospital = Hospital.new hospital_params
    if @hospital.save == true
      flash[:notice] = "Hospital was successfully created"
      redirect_to hospitals_path
    else 
      flash[:error] = "Hospital was not successfully created"
      render :new
    end
  end

  def edit
    @hospital = Hospital.find params[:id]
  end

  def update
    @hospital = Hospital.find params[:id]
    @hospital.update_attributes hospital_params
    redirect_to hospitals_path(@hospital)
  end

  def destroy
    @hospital = Hospital.find params[:id]
    @hospital.delete
    redirect_to hospitals_path
  end

  private

  def hospital_params
    params.require(:hospital).permit(:name, :location, :beds)
  end

end

