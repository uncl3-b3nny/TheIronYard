require 'rails_helper'

describe MedicationsController do

  let!(:medication) { Medication.create(name: "Charleston Birth Center")}

  it "GET #index" do
    sign_in
    get :index
    expect(assigns(:medications).class).to eq(Medication::ActiveRecord_Relation)
  end

  it "GET #new" do
    sign_in
    get :new
    expect(assigns(:medication).class).to eq(Medication)
    expect(assigns(:medication).new_record?).to eq(true)
  end
  
    describe 'POST #create' do
      it 'successful creation' do
      sign_in
      expect {
        post :create, medication: {name: "Charleston Birth Center" }
      }.to change(Medication, :count).by(1)
      expect(response).to redirect_to medications_path
      end
  
      it "failed creation" do
        sign_in
        expect {
          post :create, medication: { name: "" }
        }.not_to change(Medication, :count)
        expect(response).to render_template :new
      end 
    end

    describe "GET #edit" do 
      it "should find an object" do
        sign_in
        get :edit, id: medication
        expect(assigns(medication)).to eq(medication)
      end
    end

    describe "GET #show" do 
      it "should find an object, and create a comment" do
        sign_in
        get :show, id: medication
        expect(assigns(medication)).to eq(medication)
      end
    end
end

#stubbing means ignoring. For example 