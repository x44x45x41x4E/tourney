require 'rails_helper'

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

RSpec.describe MessagersController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # Messager. As you add validations to Messager, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # MessagersController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all messagers as @messagers" do
      messager = Messager.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:messagers)).to eq([messager])
    end
  end

  describe "GET show" do
    it "assigns the requested messager as @messager" do
      messager = Messager.create! valid_attributes
      get :show, {:id => messager.to_param}, valid_session
      expect(assigns(:messager)).to eq(messager)
    end
  end

  describe "GET new" do
    it "assigns a new messager as @messager" do
      get :new, {}, valid_session
      expect(assigns(:messager)).to be_a_new(Messager)
    end
  end

  describe "GET edit" do
    it "assigns the requested messager as @messager" do
      messager = Messager.create! valid_attributes
      get :edit, {:id => messager.to_param}, valid_session
      expect(assigns(:messager)).to eq(messager)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Messager" do
        expect {
          post :create, {:messager => valid_attributes}, valid_session
        }.to change(Messager, :count).by(1)
      end

      it "assigns a newly created messager as @messager" do
        post :create, {:messager => valid_attributes}, valid_session
        expect(assigns(:messager)).to be_a(Messager)
        expect(assigns(:messager)).to be_persisted
      end

      it "redirects to the created messager" do
        post :create, {:messager => valid_attributes}, valid_session
        expect(response).to redirect_to(Messager.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved messager as @messager" do
        post :create, {:messager => invalid_attributes}, valid_session
        expect(assigns(:messager)).to be_a_new(Messager)
      end

      it "re-renders the 'new' template" do
        post :create, {:messager => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested messager" do
        messager = Messager.create! valid_attributes
        put :update, {:id => messager.to_param, :messager => new_attributes}, valid_session
        messager.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested messager as @messager" do
        messager = Messager.create! valid_attributes
        put :update, {:id => messager.to_param, :messager => valid_attributes}, valid_session
        expect(assigns(:messager)).to eq(messager)
      end

      it "redirects to the messager" do
        messager = Messager.create! valid_attributes
        put :update, {:id => messager.to_param, :messager => valid_attributes}, valid_session
        expect(response).to redirect_to(messager)
      end
    end

    describe "with invalid params" do
      it "assigns the messager as @messager" do
        messager = Messager.create! valid_attributes
        put :update, {:id => messager.to_param, :messager => invalid_attributes}, valid_session
        expect(assigns(:messager)).to eq(messager)
      end

      it "re-renders the 'edit' template" do
        messager = Messager.create! valid_attributes
        put :update, {:id => messager.to_param, :messager => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested messager" do
      messager = Messager.create! valid_attributes
      expect {
        delete :destroy, {:id => messager.to_param}, valid_session
      }.to change(Messager, :count).by(-1)
    end

    it "redirects to the messagers list" do
      messager = Messager.create! valid_attributes
      delete :destroy, {:id => messager.to_param}, valid_session
      expect(response).to redirect_to(messagers_url)
    end
  end

end
