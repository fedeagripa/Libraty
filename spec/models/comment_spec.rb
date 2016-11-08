require "rails_helper"

RSpec.describe Comment do

  it { should validate_presence_of(:text)}

  context "creation" do
    it "create random comment" do 
      comment = create(:comment)
      expect(comment).to be_valid
    end
  end
end
