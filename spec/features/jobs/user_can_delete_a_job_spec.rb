require 'rails_helper'

describe "User can delete a job" do
  scenario "a user can remove a job from the database" do
    category = Category.new(title: "Tech")
    company = Company.create!(name: "ESPN")
    job_1 = company.jobs.create!(title: "Developer", level_of_interest: 70, city: "Denver", category: category)
    job_2 = company.jobs.create!(title: "Janitor", level_of_interest: 5, city: "Golden", category: category)

    visit company_path(company)

    click_link "#{job_2.title}"

    expect(current_path).to eql(company_job_path(company, job_2))
    expect(page).to have_content(job_2.title)

    click_link "Delete this job"

    expect(current_path).to eql(company_path(company))
    expect(page).to have_content(company.name)
    expect(page).to have_content(job_1.title)
    expect(page).to have_no_content(job_2.title)
  end
end
