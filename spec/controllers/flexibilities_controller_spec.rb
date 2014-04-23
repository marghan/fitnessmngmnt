require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe FlexibilitiesController do

  # This should return the minimal set of attributes required to create a valid
  # Flexibility. As you add validations to Flexibility, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "exerciseType" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # FlexibilitiesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all flexibilities as @flexibilities" do
      flexibility = Flexibility.create! valid_attributes
      get :index, {}, valid_session
      assigns(:flexibilities).should eq([flexibility])
    end
  end

  describe "GET show" do
    it "assigns the requested flexibility as @flexibility" do
      flexibility = Flexibility.create! valid_attributes
      get :show, {:id => flexibility.to_param}, valid_session
      assigns(:flexibility).should eq(flexibility)
    end
  end

  describe "GET new" do
    it "assigns a new flexibility as @flexibility" do
      get :new, {}, valid_session
      assigns(:flexibility).should be_a_new(Flexibility)
    end
  end

  describe "GET edit" do
    it "assigns the requested flexibility as @flexibility" do
      flexibility = Flexibility.create! valid_attributes
      get :edit, {:id => flexibility.to_param}, valid_session
      assigns(:flexibility).should eq(flexibility)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Flexibility" do
        expect {
          post :create, {:flexibility => valid_attributes}, valid_session
        }.to change(Flexibility, :count).by(1)
      end

      it "assigns a newly created flexibility as @flexibility" do
        post :create, {:flexibility => valid_attributes}, valid_session
        assigns(:flexibility).should be_a(Flexibility)
        assigns(:flexibility).should be_persisted
      end

      it "redirects to the created flexibility" do
        post :create, {:flexibility => valid_attributes}, valid_session
        response.should redirect_to(Flexibility.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved flexibility as @flexibility" do
        # Trigger the behavior that occurs when invalid params are submitted
        Flexibility.any_instance.stub(:save).and_return(false)
        post :create, {:flexibility => { "exerciseType" => "invalid value" }}, valid_session
        assigns(:flexibility).should be_a_new(Flexibility)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Flexibility.any_instance.stub(:save).and_return(false)
        post :create, {:flexibility => { "exerciseType" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested flexibility" do
        flexibility = Flexibility.create! valid_attributes
        # Assuming there are no other flexibilities in the database, this
        # specifies that the Flexibility created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Flexibility.any_instance.should_receive(:update).with({ "exerciseType" => "MyString" })
        put :update, {:id => flexibility.to_param, :flexibility => { "exerciseType" => "MyString" }}, valid_session
      end

      it "assigns the requested flexibility as @flexibility" do
        flexibility = Flexibility.create! valid_attributes
        put :update, {:id => flexibility.to_param, :flexibility => valid_attributes}, valid_session
        assigns(:flexibility).should eq(flexibility)
      end

      it "redirects to the flexibility" do
        flexibility = Flexibility.create! valid_attributes
        put :update, {:id => flexibility.to_param, :flexibility => valid_attributes}, valid_session
        response.should redirect_to(flexibility)
      end
    end

    describe "with invalid params" do
      it "assigns the flexibility as @flexibility" do
        flexibility = Flexibility.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Flexibility.any_instance.stub(:save).and_return(false)
        put :update, {:id => flexibility.to_param, :flexibility => { "exerciseType" => "invalid value" }}, valid_session
        assigns(:flexibility).should eq(flexibility)
      end

      it "re-renders the 'edit' template" do
        flexibility = Flexibility.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Flexibility.any_instance.stub(:save).and_return(false)
        put :update, {:id => flexibility.to_param, :flexibility => { "exerciseType" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested flexibility" do
      flexibility = Flexibility.create! valid_attributes
      expect {
        delete :destroy, {:id => flexibility.to_param}, valid_session
      }.to change(Flexibility, :count).by(-1)
    end

    it "redirects to the flexibilities list" do
      flexibility = Flexibility.create! valid_attributes
      delete :destroy, {:id => flexibility.to_param}, valid_session
      response.should redirect_to(flexibilities_url)
    end
  end

end
