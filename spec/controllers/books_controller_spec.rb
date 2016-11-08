require 'rails_helper'

RSpec.describe BooksController, type: :controller do
  before(:each) do
    @user = create(:user)
    sign_in(@user)

    @author = create(:author)
    @book = create(:book)
  end

  describe "GET #index" do
    it "assigns all books as @books" do
      get :index
      expect(response).to have_http_status(200)
    end
  end

  describe "GET show" do
    it "increment bookings count" do
      get :show, author_id: @author.id, id: @book.id
      expect(response).to have_http_status(200)
    end
  end

end
