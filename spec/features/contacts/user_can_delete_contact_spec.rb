require 'rails_helper'

describe "User deletes a contact" do
  scenario "a user can delete a contact" do
    company = create(:company)
    visit company_path(company)

    fill_in "contact[full_name]", with: "ContactName"
    fill_in "contact[position]", with: "position1"
    fill_in "contact[email]", with: "email1"

    click_button "Create Contact"

    expect(page).to have_content("ContactName")
    expect(Contact.all.count).to eql(1)

    click_link "delete contact"

    expect(current_path).to eql(company_path(company))
    expect(page).to have_no_content("ContactName")
    expect(Contact.all.count).to eql(0)
  end
end
