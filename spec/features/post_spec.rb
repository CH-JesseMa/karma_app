  it "should empty the .post div", js: true do
    visit root_path
    page.find("h1", :text => "hey mac").click
    expect(page).to have_content "DLAREG YEH"
  end
