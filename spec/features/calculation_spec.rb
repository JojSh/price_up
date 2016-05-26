feature "Wholesale price feature" do

  scenario "calculated by entering costs and time" do
    visit '/calculator'
    fill_in :costs, with: 2
    fill_in :minutes, with: 1
    click_button("Calculate Wholesale")
    expect(page).to have_content("4.68")
  end
end

feature "Retail price feature" do

  scenario "calculated by entering wholesale price" do
    visit '/calculator'
    fill_in :wholesale_price, with: 2
    click_button("Calculate RRP")
    expect(page).to have_content("5")
  end
end

feature "Alter rates" do

  scenario "by clicking button and entering new cost" do
    visit '/calculator'
    fill_in :rate_per_min, with: 0.50
    fill_in :costs, with: 2
    fill_in :minutes, with: 1
    click_button("Calculate Wholesale")
    expect(page).to have_content("5.00")
  end
end
