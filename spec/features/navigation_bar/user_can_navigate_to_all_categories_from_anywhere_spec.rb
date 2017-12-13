require 'rails_helper'

describe "Nav Bar" do
  scenario "a user can jump to categories from companies" do
    visit companies_path

    click_link "Categories"

    expect(current_path).to eql(categories_path)
  end

  scenario "a user can jump to categories from jobs index" do
    visit jobs_path

    click_link "Categories"

    expect(current_path).to eql(categories_path)
  end

  scenario "a user can jump to categories from companies" do
    visit dashboard_index_path

    click_link "Categories"

    expect(current_path).to eql(categories_path)
  end
end
