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

RSpec.describe ShortsController, type: :controller do

	# This should return the minimal set of attributes required to create a valid
	# Testimonial. As you add validations to Testimonial, be sure to
	# adjust the attributes here as well.
	 let(:valid_attributes) {
		FactoryGirl.attributes_for(:short)
	}

	let(:invalid_attributes) {
		FactoryGirl.attributes_for(:invalid_short)
	}

	# This should return the minimal set of values that should be in the session
	# in order to pass any filters (e.g. authentication) defined in
	# TestimonialsController. Be sure to keep this updated too.
	let(:valid_session) { {} }
	

	describe "GET #show" do
		it "assigns the requested testimonial as @testimonial" do
			short = Short.create! valid_attributes
			get :show, {:id => short.to_param}, valid_session
			expect(assigns(:short)).to eq(short)
		end
	end

	describe "GET #new" do
		it "assigns a new testimonial as @testimonial" do
			get :new, {}, valid_session
			expect(assigns(:short)).to be_a_new(Short)
		end
	end

	describe "POST #create" do
		context "with valid params" do
			it "creates a new Short URL" do
				expect {
					post :create, {:short => valid_attributes}, valid_session
				}.to change(Short, :count).by(1)
			end

			it "assigns a newly created short as @short" do
				post :create, {:short => valid_attributes}, valid_session
				expect(assigns(:short)).to be_persisted
			end

			it "redirects to the created short" do
				post :create, {:short => valid_attributes}, valid_session
				expect(response.status).to eq(200)
			end
		end

		context "with invalid params" do
			it "assigns a newly created but unsaved short as @short" do
				post :create, {:short => invalid_attributes}, valid_session
				expect(assigns(:short)).to be_a_new(Short)
			end

			it "re-renders the 'new' template" do
				post :create, {:short => invalid_attributes}, valid_session
				expect(response).to render_template("new")
			end
		end
	end
end