require 'rails_helper'

describe "Using the Nav Bar" do
  scenario "a user can jump to all jobs from categories index" do
    visit categories_path

    click_link "Companies"

    expect(current_path).to eql(companies_path)
  end

  scenario "a user can jump to jobs from companies index" do
    visit jobs_path

    click_link "Companies"

    expect(current_path).to eql(companies_path)
  end

  scenario "a user can jump to jobs from dashboard" do
    visit dashboard_index_path

    click_link "Companies"

    expect(current_path).to eql(companies_path)
  end
end
