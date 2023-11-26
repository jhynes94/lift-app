require 'rails_helper'

RSpec.describe ProgramsController, type: :controller do
  let(:valid_attributes) {
    {
      name: 'Test Program',
      description: 'This is a test program.',
      image: fixture_file_upload(Rails.root.join('spec', 'fixtures', 'test_image.jpg'), 'image/jpeg')
    }
  }

  let(:invalid_attributes) {
    { name: nil, description: nil }
  }

  describe "GET #index" do
    it "returns a success response" do
      Program.create! valid_attributes
      get :index
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      program = Program.create! valid_attributes
      get :show, params: { id: program.to_param }
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid parameters" do
      it "creates a new Program" do
        expect {
          post :create, params: { program: valid_attributes }
        }.to change(Program, :count).by(1)
      end
    end

    context "with invalid parameters" do
      it "does not create a new Program" do
        expect {
          post :create, params: { program: invalid_attributes }
        }.to change(Program, :count).by(0)
      end
    end
  end

  describe "PUT #update" do
    context "with valid parameters" do
      let(:new_attributes) {
        { name: 'New Program', description: 'This is a new program.' }
      }

      it "updates the requested program" do
        program = Program.create! valid_attributes
        put :update, params: { id: program.to_param, program: new_attributes }
        program.reload
        expect(program.name).to eq('New Program')
        expect(program.description).to eq('This is a new program.')
      end
    end

    context "with invalid parameters" do
      it "does not update the program" do
        program = Program.create! valid_attributes
        put :update, params: { id: program.to_param, program: invalid_attributes }
        program.reload
        expect(program.name).not_to be_nil
        expect(program.description).not_to be_nil
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested program" do
      program = Program.create! valid_attributes
      expect {
        delete :destroy, params: { id: program.to_param }
      }.to change(Program, :count).by(-1)
    end
  end
end
