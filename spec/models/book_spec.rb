require "rails_helper"

RSpec.describe Book do

	it { should validate_presence_of(:title)}

  context "creation" do
    it "create random book" do 
      book = create(:book)
    end
  end
end
