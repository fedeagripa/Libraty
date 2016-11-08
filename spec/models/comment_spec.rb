require "rails_helper"

RSpec.describe Comment do

  it { should validate_presence_of(:text)}

  context "creation" do
    it "create random comment" do 
      build(:comment).should be_valid
    end
  end
end
