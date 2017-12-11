require 'rails_helper'

describe "User can update a job" do
  scenario "a user can make changes to an existing job" do
    company = Company.create!(name: "ESPN")
    job = company.jobs.create!(title: "Developer", level_of_interest: 70, city: "Denver")

    visit company_job_path(company, job)

    expect(page).to have_content(job.title)
    expect(page).to have_content(job.level_of_interest)

    click_on "Edit Job"

    expect(current_path).to eql(edit_company_job_path(company, job))
    expect(page).to have_content("Edit Job ##{job.id}")

    fill_in "job[city]", with: "Colorado Springs"
    fill_in "job[level_of_interest]", with: "10"

    click_on "Update Job"

    expect(current_path).to eql(company_job_path(company, job))
    expect(page).to have_content("Colorado Springs")
    expect(page).to have_content("10")
    expect(page).to have_no_content("Denver")
    expect(page).to have_no_content("70")
  end
end
