require "rails_helper"

RSpec.describe Book do

	#it { should validate_presence_of(:title)}

  context "creation" do
    it "create with title" do 
      book = create(:book)
    end
  end
end
