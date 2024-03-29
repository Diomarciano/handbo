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

RSpec.describe WeightClassesController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # WeightClass. As you add validations to WeightClass, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # WeightClassesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all weight_classes as @weight_classes" do
      weight_class = WeightClass.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:weight_classes)).to eq([weight_class])
    end
  end

  describe "GET #show" do
    it "assigns the requested weight_class as @weight_class" do
      weight_class = WeightClass.create! valid_attributes
      get :show, {:id => weight_class.to_param}, valid_session
      expect(assigns(:weight_class)).to eq(weight_class)
    end
  end

  describe "GET #new" do
    it "assigns a new weight_class as @weight_class" do
      get :new, {}, valid_session
      expect(assigns(:weight_class)).to be_a_new(WeightClass)
    end
  end

  describe "GET #edit" do
    it "assigns the requested weight_class as @weight_class" do
      weight_class = WeightClass.create! valid_attributes
      get :edit, {:id => weight_class.to_param}, valid_session
      expect(assigns(:weight_class)).to eq(weight_class)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new WeightClass" do
        expect {
          post :create, {:weight_class => valid_attributes}, valid_session
        }.to change(WeightClass, :count).by(1)
      end

      it "assigns a newly created weight_class as @weight_class" do
        post :create, {:weight_class => valid_attributes}, valid_session
        expect(assigns(:weight_class)).to be_a(WeightClass)
        expect(assigns(:weight_class)).to be_persisted
      end

      it "redirects to the created weight_class" do
        post :create, {:weight_class => valid_attributes}, valid_session
        expect(response).to redirect_to(WeightClass.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved weight_class as @weight_class" do
        post :create, {:weight_class => invalid_attributes}, valid_session
        expect(assigns(:weight_class)).to be_a_new(WeightClass)
      end

      it "re-renders the 'new' template" do
        post :create, {:weight_class => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested weight_class" do
        weight_class = WeightClass.create! valid_attributes
        put :update, {:id => weight_class.to_param, :weight_class => new_attributes}, valid_session
        weight_class.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested weight_class as @weight_class" do
        weight_class = WeightClass.create! valid_attributes
        put :update, {:id => weight_class.to_param, :weight_class => valid_attributes}, valid_session
        expect(assigns(:weight_class)).to eq(weight_class)
      end

      it "redirects to the weight_class" do
        weight_class = WeightClass.create! valid_attributes
        put :update, {:id => weight_class.to_param, :weight_class => valid_attributes}, valid_session
        expect(response).to redirect_to(weight_class)
      end
    end

    context "with invalid params" do
      it "assigns the weight_class as @weight_class" do
        weight_class = WeightClass.create! valid_attributes
        put :update, {:id => weight_class.to_param, :weight_class => invalid_attributes}, valid_session
        expect(assigns(:weight_class)).to eq(weight_class)
      end

      it "re-renders the 'edit' template" do
        weight_class = WeightClass.create! valid_attributes
        put :update, {:id => weight_class.to_param, :weight_class => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested weight_class" do
      weight_class = WeightClass.create! valid_attributes
      expect {
        delete :destroy, {:id => weight_class.to_param}, valid_session
      }.to change(WeightClass, :count).by(-1)
    end

    it "redirects to the weight_classes list" do
      weight_class = WeightClass.create! valid_attributes
      delete :destroy, {:id => weight_class.to_param}, valid_session
      expect(response).to redirect_to(weight_classes_url)
    end
  end

end
