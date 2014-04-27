require 'spec_helper'

describe 'visit root' do
  it 'should have content' do
    visit root_path
    expect(page).to have_content("2000K")
  end
end


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
