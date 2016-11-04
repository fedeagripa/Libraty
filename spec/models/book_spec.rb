require "rails_helper"

RSpec.describe Book do

	it { should validate_presence_of(:title)}

  context "with 2 or more comments" do
    it "orders them in reverse chronologically" do
      book = build(:book)
    end
  end
end
