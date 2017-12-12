require 'rails_helper'

describe Contact do
  describe "validations" do
    context "invalid attributes" do
      it "is invalid without a full_name" do
        company = create(:company)
        contact = Contact.new(position: "Head of Talent", email: "fake@fake.com", company: company)
        expect(contact).to be_invalid
      end

      it "is invalid without a position" do
        company = create(:company)
        contact = Contact.new(full_name: "Linda Belcher", email: "fake@fake.com", company: company)
        expect(contact).to be_invalid
      end

      it "is invalid without an email" do
        company = create(:company)
        contact = Contact.new(full_name: "Linda Belcher", position: "Head of Talent", company: company)
        expect(contact).to be_invalid
      end

      it "is invalid without a company" do
        company = create(:company)
        contact = Contact.new(full_name: "Linda Belcher", position: "Head of Talent", email: "fake@fake.com")
        expect(contact).to be_invalid
      end
    end

    context "valid attributes" do
      it "is valid with a full name, position, email, and company" do
        company = create(:company)
        contact = Contact.new(full_name: "Linda Belcher", position: "Head of Talent", email: "fake@fake.com", company: company)
        expect(contact).to be_valid
      end
    end
  end
end
