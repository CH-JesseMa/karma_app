feature "Signing up" do
  scenario "user inputs info and is then signed up" do
    visit new_user_path
    fill_in 'User Name', :with => "Spaniard"
    fill_in 'Email', :with => 'gladiator@gmail.com'
    fill_in 'Password', :with => 'maximus'
    fill_in 'Confirm Password', :with => 'maximus'
    click_button 'Sign Up'
    expect(page).to have_selector '#notice', text: "User was successfully created"
    #expect(page.find('.alert')).to have_content 'Post successfully created'
  end
end
