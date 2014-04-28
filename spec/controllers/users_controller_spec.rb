require 'spec_helper'

describe UsersController do

  describe "GET #index" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "POST #create" do
    it "creates a user" do
      user = User.create(user_name: "Spaniard", email: "gladiator@gmail.com", password: "maximus", password_confirmation: "maximus")
      expect(user.user_name).to eq("Spaniard")
    end
  end

#   describe 'POST #create' do
#     context 'when password is invalid' do
#       it 'renders the page with error' do
#         user = create(:user)
#         post :create, session: { email: user.email, password: 'invalid' }
#         expect(response).to render_template(:new)
#         expect(flash[:error]).to match(/^Email and password do not match/)
#       end
#     end

#     context 'when password is valid' do
#     it 'sets the user in the session and redirects them to their dashboard' do
#       user = create(:user)

#       post :create, session: { email: user.email, password: user.password }

#       expect(response).to redirect_to '/dashboard'
#       expect(controller.current_user).to eq user
#     end
#   end
# end


end

# docs:
# https://www.relishapp.com/rspec/rspec-rails/docs/controller-specs

# To specify outcomes, you can use:

# standard rspec matchers (expect(response.status).to eq(200))
# standard test/unit assertions (assert_equal 200, response.status)
# rails assertions (assert_response 200)
# rails-specific matchers:
# expect(response).to render_template(wraps assert_template)
# expect(response).to redirect_to(wraps assert_redirected_to)
# expect(assigns(:widget)).to be_a_new(Widget)


# examples

# describe TeamsController do
#   describe "GET index" do
#     it "assigns @teams" do
#       team = Team.create
#       get :index
#       expect(assigns(:teams)).to eq([team])
#     end

#     it "renders the index template" do
#       get :index
#       expect(response).to render_template("index")
#     end
#   end
# end
