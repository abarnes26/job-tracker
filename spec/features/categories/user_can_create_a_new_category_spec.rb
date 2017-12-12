require 'rails_helper'

describe "User can creates a new category" do
  scenario "a user adds all info needed to create a valid cateogry" do

    visit new_category_path

    expect(current_path).to eql(new_category_path)
    fill_in "category[title]", with: "Solar Jobs"

    click_button "Create Category"

    expect(current_path).to eql(category_path(Category.all.last))
    expect(page).to have_content("Solar Jobs")

  end

  scenario "that already exists" do
    visit new_category_path

    fill_in "category[title]", with: "Solar Jobs"

    click_button "Create Category"

    visit new_category_path

    fill_in "category[title]", with: "Solar Jobs"

    click_button "Create Category"

    expect(page).to have_content("Enter a New Category")
  end

end
