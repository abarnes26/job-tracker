require 'rails_helper'

describe "User creates a new contact" do
  scenario "a user can create a contact" do
    company = create(:company)
    visit company_path(company)

    fill_in "contact[full_name]", with: "UserName"
    fill_in "contact[position]", with: "position1"
    fill_in "contact[email]", with: "email1"

    click_button "Create Contact"

    expect(current_path).to eq("/companies/#{Company.last.id}")
    expect(page).to have_content("UserName")
    expect(page).to have_content("position1")
  end
end
