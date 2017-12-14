require 'rails_helper'

describe "When a user creates a comment" do
  scenario "the user sees their comment" do
    category = Category.new(title: "Tech")
    company = Company.create!(name: "ESPN")
    job_1 = company.jobs.create!(title: "Developer", level_of_interest: 70, city: "Denver", category: category)

    visit company_job_path(company, job_1)

    fill_in "comment[content]", with: "I love this job!"

    click_button "Create Comment"

    expect(current_path).to eql(company_job_path(company, job_1))
    expect(page).to have_content("I love this job!")
  end
end
