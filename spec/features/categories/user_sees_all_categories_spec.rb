require 'rails_helper'

describe "User sees all categories" do
  scenario "a user sees all the categories" do
    category = Category.create!(title: "Sports")
    category_two = Category.create!(title: "Applied Science")

    visit categories_path

    expect(page).to have_content("Sports")
    expect(page).to have_content("Applied Science")
  end

end
