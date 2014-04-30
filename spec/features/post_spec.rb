require 'spec_helper'

describe "posts index" do

  describe "should login" do
    # given a signed in user
    # when visiting posts index
    it "should display only the requests on the page", js: true do
      user = User.create(user_name: "Spaniard", email: "gladiator@gmail.com", password: "maximus", password_confirmation: "maximus")
      visit '/login'
      fill_in 'Email', :with => 'gladiator@gmail.com'
      fill_in 'Password', :with => 'maximus'
      click_button 'Login'
      click_on "What's Going On?"
      # and they click on requests
      click_button('Show Requests')
      request_div = find("#requests")
      offers_div = find("#offers")
      # then it shows all requests
      expect(request_div).to be_visible
      # (and they shouldnt see offers!)
      expect(offers_div).not_to be_visible
    end
    it "should display only the offers on the page" do
      user = User.create(user_name: "Spaniard", email: "gladiator@gmail.com", password: "maximus", password_confirmation: "maximus")
      visit '/login'
      fill_in 'Email', :with => 'gladiator@gmail.com'
      fill_in 'Password', :with => 'maximus'
      click_button 'Login'
      click_on "What's Going On?"
      # and they click on requests
      click_button('offers')
      request_div = find("#requests")
      offers_div = find("#offers")
      # then it shows all requests
      expect(offers_div).to be_visible
      # (and they shouldnt see offers!)
      expect(request_div).not_to be_visible
    end

  end
end



