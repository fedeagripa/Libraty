require 'rails_helper'

RSpec.describe BookingsController, type: :controller do
  before(:each) do
    @user = create(:user)
    sign_in(@user)
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

  describe "GET #show" do
    it "assigns the requested booking as @booking" do
      booking = Booking.create! valid_attributes
      get :show, params: {id: booking.to_param}, session: valid_session
      expect(assigns(:booking)).to eq(booking)
    end
  end
end
