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

feature "Customize" do

  context "rate per minute" do

    before do
      visit '/calculator'
      fill_in :rate_per_min, with: 0.50
      fill_in :costs, with: 2
      fill_in :minutes, with: 1
    end

    scenario "by clicking button and entering new cost" do
      click_button("Calculate Wholesale")
      expect(page).to have_content("5.00")
    end
  end

  context "rate of wholesale markup" do
    scenario "by clicking button and adjusting multiplier" do
      # fill_in :wholesale_markup, with

    end
  end

  context "rate of RRP markup" do
    scenario "by clicking button and adjusting multiplier" do

    end
  end

end
