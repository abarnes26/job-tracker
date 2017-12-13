require 'rails_helper'

describe Comment do
  describe "validations" do
    it "is invalid without content" do
      company = create(:company)
      job = create(:job)
      comment = Comment.new(job: job)

      expect(comment).to be_invalid
    end

    it "is valid with content" do
      company = create(:company)
      job = create(:job)
      comment = Comment.new(content: "I am a comment!", job: job)

      expect(comment).to be_valid
    end
  end

  describe "relationships" do
    it "belongs to a job" do
      company = create(:company)
      job = create(:job)
      comment = Comment.new(content: "I am a comment!", job: job)
      expect(comment).to respond_to(:job)
    end
  end
end
