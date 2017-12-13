require 'rails_helper'

describe "Nav Bar" do
  scenario "a user can jump to all companies from categories index" do
    visit categories_path

    click_link "Companies"

    expect(current_path).to eql(companies_path)
  end

  scenario "a user can jump to companies from jobs index" do
    visit jobs_path

    click_link "Companies"

    expect(current_path).to eql(companies_path)
  end

  scenario "a user can jump to companies from companies" do
    visit dashboard_index_path

    click_link "Companies"

    expect(current_path).to eql(companies_path)
  end
end
