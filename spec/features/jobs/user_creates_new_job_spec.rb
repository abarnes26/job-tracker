require 'rails_helper'

describe "User creates a new job" do
  scenario "a user can create a new job" do
    category = Category.create!(title: "Tech")
    company = Company.create!(name: "ESPN")
    visit new_company_job_path(company)

    fill_in "job[title]", with: "Developer"
    fill_in "job[description]", with: "So fun!"
    fill_in "job[level_of_interest]", with: 80
    fill_in "job[city]", with: "Denver"
    select "Tech", :from => "job[category_id]"

    # require 'pry'; binding.pry

    click_button "Create Job"

    expect(current_path).to eq("/companies/#{company.id}/jobs/#{Job.all.first.id}")
    expect(page).to have_content("ESPN")
    expect(page).to have_content("Developer")
    expect(page).to have_content("80")
    expect(page).to have_content("Denver")
  end
end
