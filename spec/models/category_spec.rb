require 'rails_helper'

describe Category do
  describe "validations" do
    it "is invalid without a title" do
      category = Category.new()

      expect(category).to be_invalid
    end

    it "is valid with a title" do
      job = create(:job)
      category = Category.new(title: "Best")

      expect(category).to be_valid
    end
  end
end
