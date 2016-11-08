require "rails_helper"

RSpec.describe Author do

  it { should validate_presence_of(:first_name)}

  context "creation" do
    it "create random author" do 
      author = create(:author)
    end
  end
end
