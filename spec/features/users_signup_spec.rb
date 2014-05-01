feature "Signing up" do
  scenario "user inputs info and is then signed up" do
    visit new_user_path
    fill_in 'user_name', :with => "Spaniard"
    fill_in 'email', :with => 'gladiator@gmail.com'
    fill_in 'password', :with => 'maximus'
    fill_in 'password_confirmation', :with => 'maximus'
    click_button 'Sign Up'
    expect(page).to have_selector '#notice', text: "User was successfully created"
    #expect(page.find('.alert')).to have_content 'Post successfully created'
  end
end
