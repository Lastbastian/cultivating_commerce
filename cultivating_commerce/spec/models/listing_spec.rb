require 'rails_helper'

RSpec.describe Listing, :type => :model do

  context "with invalid params" do
    it "should fail validation" do
      expect(Listing.create).to_not be_valid
    end

    it "should not create a Listing in the database" do
      expect{ Listing.create}.to_not change{Listing.count}
    end
  end

  context "with valid params" do
    it "should pass validation" do
      expect(Listing.create(title: "test", description:"very good")).to be_valid
    end

    it "should increase the Listing count in the db" do
      expect { Listing.create(title: "test", description: "very good") }.to change { Listing.count }.by(1)
    end

    it "downcases the title" do
      le = Listing.create(title: "TEST", description: "very good")

      expect(le.title).to eq(le.title.downcase)
    end
  end
end
