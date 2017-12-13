require 'rails_helper'

describe "When user views dashboard" do
  scenario "user can jump to jobs filtered by city" do
    company1, company2, company3 = create_list(:company, 3)
    category1, category2, category3 = create_list(:category, 3)
    job1 = Job.create(title: "Title1", description: "description1", city: "City1", level_of_interest: 40, company: company1, category: category1)
    job2 = Job.create(title: "Title2", description: "description2", city: "City1", level_of_interest: 30, company: company2, category: category2)
    job3 = Job.create(title: "Title3", description: "description3", city: "City2", level_of_interest: 50, company: company3, category: category3)
    job4 = Job.create(title: "Title4", description: "description4", city: "City2", level_of_interest: 60, company: company3, category: category3)
    job5 = Job.create(title: "Title5", description: "description5", city: "City2", level_of_interest: 70, company: company3, category: category3)

    visit dashboard_index_path

    expect(Job.all.count).to eql(5)
    expect(page).to have_content(job5.title)
    expect(page).to have_content(job4.title)
    expect(page).to have_content(job3.title)
    expect(page).to have_no_content(job2.title)
    expect(page).to have_no_content(job1.title)
  end
end
