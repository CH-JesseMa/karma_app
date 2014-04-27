require 'spec_helper'

describe UsersController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

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
