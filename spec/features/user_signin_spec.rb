require 'spec_helper'

describe 'visit root' do
  it 'should have content' do
    visit root_path
    expect(page).to have_content("Karma")
  end
end

feature "Signing in" do
  scenario "Signing in with correct credentials" do
    user = User.create(user_name: "Spaniard", email: "gladiator@gmail.com", password: "maximus", password_confirmation: "maximus")
    visit '/login'
    fill_in 'email', :with => 'gladiator@gmail.com'
    fill_in 'password', :with => 'maximus'
    click_button 'Login'
    expect(page).to have_selector 'a', text: "Logout"
  end
end

feature "Signing out" do
  scenario "logging out returns you to the login page" do
    user = User.create(user_name: "Spaniard", email: "gladiator@gmail.com", password: "maximus", password_confirmation: "maximus")
    visit '/login'
    fill_in 'email', :with => 'gladiator@gmail.com'
    fill_in 'password', :with => 'maximus'
    click_button 'Login'
    visit '/'
    click_link 'Logout'
    expect(page).to have_selector 'a', text: "Sign Up"
  end
end

################

# docs:
# http://rubydoc.info/github/jnicklas/capybara/master

# capybara cheetsheet:
# http://learn.thoughtbot.com/test-driven-rails-resources/capybara.pdf

# example

# feature "Widget management" do
#   scenario "User creates a new widget" do
#     visit "/widgets/new"

#     fill_in "Name", :with => "My Widget"
#     click_button "Create Widget"

#     expect(page).to have_text("Widget was successfully created.")
#   end
# end

# describe 'log in' do
#   visit session_new_path
#   fill_in "Email", :with => "gladiator@gmail.com"
#   fill_in "Password", :with => "maximus"
#   click_button "Login"
#   end
# end

# describe 'logged in' do
#   it "should have a link to logout" do
#     visit new_user
#     expect(page).to have_content("logout")
#   end
# end
