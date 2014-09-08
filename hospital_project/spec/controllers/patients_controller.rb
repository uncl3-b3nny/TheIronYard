require 'rails_helper'

describe HospitalsController do

  let(:hospital) { create(:hospital)}
  let(:patient) {create(:patient, facilities_provider: hospital) }
  let(:doctor) {create(:doctor, facilities_provider: hospital) }

  it "GET #new" do
    sign_in
    get :new
    expect(assigns(:patient).class).to eq(Patient)
    expect(assigns(:patient).new_record?).to eq(true)
  end
  
  describe 'POST #create' do
    it 'successful creation' do
    sign_in
    expect {
      post :create, patient: {name: "Charleston Birth Center" }
    }.to change(Patient, :count).by(1)
    expect(response).to redirect_to hospitals_patients_path
    end

    it "failed creation" do
      sign_in
      expect {
        post :create, hospital: { name: "" }
      }.not_to change(Hospital, :count)
      expect(response).to render_template :new
    end 
  end

  describe "GET #edit" do 
    it "should find an object" do
      sign_in
      get :edit, id: hospital
      expect(assigns(:hospital)).to eq(hospital)
    end
  end

  describe "GET #show" do 
    it "should find an object, and create a doctor" do
      sign_in
      get :show, id: hospital
      expect(assigns(:hospital)).to eq(hospital)
      expect(assigns(:patients)).to eq([patient])
      expect(assigns(:doctors)).to eq([doctor])
    end
  end

  describe "PATCH #update" do 
    it "should find an object" do
      sign_in
    expect {
      put :update, id: hospital, hospital: {name: "asldjfk"}
    }.to change(Hospital, :count).by(1)
      expect(assigns(:hospital)).to eq(hospital)
    end
  end

  describe "DELETE #destroy" do 
    it "should seek and destroy" do
      sign_in
      expect {
       delete :destroy, id: hospital
      }.to change(Hospital, :count).by(0)
      expect(assigns(:hospital)).to eq(hospital)
      expect(response).to redirect_to hospitals_path    
    end
  end
end