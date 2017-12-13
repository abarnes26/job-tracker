require 'rails_helper'

describe "Using the Nav Bar" do
  scenario "a user can jump to dashboard from categories index" do
    visit categories_path

    click_link "Dashboard"

    expect(current_path).to eql(dashboard_index_path)
  end

  scenario "a user can jump to dashboard from companies index" do
    visit companies_path

    click_link "Dashboard"

    expect(current_path).to eql(dashboard_index_path)
  end

  scenario "a user can jump to dashboard from jobs index" do
    visit jobs_path

    click_link "Dashboard"

    expect(current_path).to eql(dashboard_index_path)
  end
end
