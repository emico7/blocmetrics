require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  let (:user1) { create(:user) }

  describe "GET #show" do

    before do
      user = User.create!(username: "user2", email: "user2@blocmetrics.com", password: "password", password_confirmation: "password")
      sign_in @user
    end

    it "returns http success" do
      get :show, {id: user.id}
      expect(response).to have_http_status(:success)
    end
  end

end
