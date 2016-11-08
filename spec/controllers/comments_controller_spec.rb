require 'rails_helper'

RSpec.describe CommentsController, type: :controller do

  before(:each) do
    @user = create(:user)
    sign_in(@user)
    @book = create(:book)
    @author = create(:author)
  end

  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Comment" do
        expect {
          post :create, author_id:@author.id, book_id:@book.id, comment: {text:"some text" }, format: :js
        }.to change(Comment, :count).by(1)
      end
    end
  end
end
