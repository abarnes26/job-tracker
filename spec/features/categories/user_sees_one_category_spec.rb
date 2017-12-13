require 'rails_helper'

describe "User sees one category" do
  scenario "a user sees a category" do
    category = Category.create!(title: "Tech")
    company = create(:company)
    job = Job.create!(title: "FakeJob1", description: "FakeDescription", level_of_interest: "50", city: "FakeCity",company: company, category: category)

    visit category_path(category)

    expect(current_path).to eq("/categories/#{category.id}")
    expect(page).to have_content("#{job.title}")
  end
end
