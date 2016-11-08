require 'rails_helper'

RSpec.describe BookingsController, type: :controller do
  before(:each) do
    @user = create(:user)
    sign_in(@user)

    @author = create(:author)
    @book = create(:book)
  end

  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all bookings as @bookings" do
      get :index
      expect(response).to have_http_status(200)
    end
  end

  describe "POST create" do

    it "increment bookings count" do
      expect {
        post :create, author_id: @author.id, book_id: @book.id, booking: {}
      }.to change(Booking, :count).by(1)
    end

    it "redirect to index" do
      post :create, author_id: @author.id, book_id: @book.id, booking: {}
      expect(response).to have_http_status(302)
    end
  end

end
