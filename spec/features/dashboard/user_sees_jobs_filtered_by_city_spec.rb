require 'rails_helper'

describe "When user views dashboard" do
  scenario "user can jump to jobs filtered by city" do
    company1, company2, company3 = create_list(:company, 3)
    category1, category2, category3 = create_list(:category, 3)
    job1 = Job.create(title: "Title1", description: "description1", city: "City1", level_of_interest: 50, company: company1, category: category1)
    job2 = Job.create(title: "Title2", description: "description2", city: "City1", level_of_interest: 50, company: company2, category: category2)
    job3 = Job.create(title: "Title3", description: "description3", city: "City2", level_of_interest: 50, company: company3, category: category3)

    visit dashboard_index_path
    click_link "City1"

    expect(page).to have_content(job1.title)
    expect(page).to have_content(job2.title)
    expect(page).to have_no_content(job3.title)
  end
end
