require "rails_helper"

RSpec.describe Book do

  context "params validations" do
    it { should validate_presence_of(:title)}
    it { should validate_presence_of(:year)}
    it { should validate_presence_of(:isbn)}
  end

  context "creation" do
    it "create random book" do 
      build(:book).should be_valid
    end
  end
end
