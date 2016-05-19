feature "Can calculate wholesale price" do


  scenario "homepage says hello" do
    visit '/'
    expect(page).to have_content("Hello")
  end

  scenario "by entering costs and time" do

    visit '/calculator'
    fill_in :costs, with: 2
    fill_in :minutes, with: 1
    click_button("Calculate Wholesale")

    expect(page).to have_content(4.68)  # int needs to be a string?

  end

end
